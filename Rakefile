begin
  require 'rspec/core/rake_task'
  require 'rake/release'

  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
  # no rspec available
end
