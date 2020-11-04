class RedisRateLimitsWorker
  @queue = :rate_limits

  class << self
    def perform(emails, access_token)
      # Create contacts
      sleep(10) unless able_to_perform?(:create)
      response = create_contacts(emails, access_token)
      # Remove contacts
      sleep(10) unless able_to_perform?(:remove)
      remove_contacts(response.results.map(&:id), access_token)
    end

    private

    def create_contacts(emails, access_token)
      response = ::Services::Hubspot::Contacts::CreateBatch.new(emails, access_token).call
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
    end

    def pop_last_timestamp
      redis.rpop(:worker_timestamps)
    end

    def able_to_perform?(action)
      timestamps = redis.lrange(:worker_timestamps, 0, -1)
      timestamps_limit = 10
      ability = (timestamps.count <= timestamps_limit || timestamps[timestamps_limit] < 10.seconds.ago) ? true : false
      Resque.logger.info("Able to #{action} contacts: #{ability} (#{timestamps.count})")
      ability
    end

    def sleep(seconds)
      Resque.logger.info("Sleep #{seconds} seconds.")
      super(seconds)
    end
  end
end
