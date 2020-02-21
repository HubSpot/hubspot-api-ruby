class LeakyBucketWorker
  include Sidekiq::Worker

  def perform(emails, access_token)
    logger.info('Sleep 0.2 seconds to avoid 429 error')
    sleep(0.2)
    response = create_contacts(emails, access_token)
    remove_contacts(response.results.map(&:id), access_token)
  end

  private

  def create_contacts(emails, access_token)
    response = Services::Hubspot::Contacts::CreateBatch.new(emails, access_token).call
    logger.info("Created contacts: #{emails}")
    response
  end

  def remove_contacts(ids, access_token)
    Services::Hubspot::Contacts::ArchiveBatch.new(ids, access_token).call
    logger.info("Removed contacts: #{ids}")
  end
end
