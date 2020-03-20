require 'resque/server'

uri = URI.parse(ENV['REDIS_URL'])
Resque.redis = Redis.new(host: uri.host, port: uri.port)
Resque.logger = Rails.logger
Resque.logger.level = Logger::INFO

