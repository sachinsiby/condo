require 'byebug'
require 'sqlite3'
require 'condo'

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")

ActiveRecord::Schema.define(version: 1) do
  create_table :tenanted_models do |t|
    t.integer :tenant_id
    t.timestamps null: false
  end

  create_table :non_tenanted_models do |t|
    t.timestamps null: false
  end

  create_table :tenants do |t|
    t.string :subdomain
  end
end

class TenantedModel < ActiveRecord::Base
  tenanted
end

class NonTenantedModel < ActiveRecord::Base
end

class Tenant < ActiveRecord::Base
end

RSpec.configure do |config|
  config.color = true
  config.filter_run :focus
  config.run_all_when_everything_filtered = true
end
