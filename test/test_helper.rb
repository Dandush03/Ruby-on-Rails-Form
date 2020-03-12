ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  if Gem::Platform.local.os == 'linux'
    parallelize(workers: :number_of_processors)
  elsif Gem::Platform.local.os == 'mingw32' || Gem::Platform.local.os == 'mingw64'
    parallelize(workers: :number_of_processors, with: :threads)
  end

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
