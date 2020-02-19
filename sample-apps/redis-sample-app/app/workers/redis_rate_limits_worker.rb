class RedisRateLimitsWorker
  include Sidekiq::Worker

  def perform(emails, access_token)
    # Create contacts
    sleep(10) unless able_to_perform?
    response = create_contacts(emails, access_token)
    # Remove contacts
    sleep(10) unless able_to_perform?
    remove_contacts(response.results.map(&:id), access_token)
  end

  private

  def create_contacts(emails, access_token)
    response = Services::Hubspot::Contacts::CreateBatch.new(emails, access_token).call
    push_timestamp
    response
  end

  def remove_contacts(ids, access_token)
    Services::Hubspot::Contacts::ArchiveBatch.new(ids, access_token).call
    push_timestamp
  end

  def redis
    @redis ||= Redis.new(host: ENV['REDIS_HOST'])
  end

  def push_timestamp
    redis.lpush(:worker_timestamps, Time.current)
    logger.info("performed_rate_limits: #{redis.llen(:worker_timestamps)}")
  end

  def pop_last_timestamp
    redis.rpop(:worker_timestamps)
  end

  def able_to_perform?
    timestamps = redis.lrange(:worker_timestamps, 0, 90)
    ability = (timestamps.count < 90 || timestamps.last < 10.seconds.ago) ? true : false
    logger.info("Able to perform: #{ability}")
    ability
  end

  def sleep(seconds)
    logger.info("Sleep #{seconds} seconds.")
    super(seconds)
  end
end
