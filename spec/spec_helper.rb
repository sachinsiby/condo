require 'byebug'
require 'condo'

RSpec.configure do |config|
  config.color = true
  config.filter_run :focus
  config.run_all_when_everything_filtered = true
end
