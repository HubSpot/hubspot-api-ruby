namespace :redis_rate_limits do
  desc "Test rate limits via redis"
  task test: :environment do
    emails = (1..3).map { |i| "redis_app#{i}@hubspot.com" }
    Parallel.map((1..10).to_a, in_processes: 10) do |process|
      20.times do
        Resque.enqueue(RedisRateLimitsWorker, emails, ENV['access_token'])
      end
    end
  end
end
