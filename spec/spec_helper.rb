require "coveralls"
Coveralls.wear!

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each { |f| require f }

require "bundler/setup"
require "tink"

RSpec.configure do |config|
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true
  config.order = "random"
end
