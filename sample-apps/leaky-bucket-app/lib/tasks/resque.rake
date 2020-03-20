require 'resque/tasks'

namespace :resque do
  task :setup do
    require 'resque'
    ENV['QUEUE'] = '*'
  end
end

desc "Alias for resque:work (To run workers on Heroku)"
task "jobs:work" => "resque:work"