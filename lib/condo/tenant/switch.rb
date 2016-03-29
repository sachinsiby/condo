module Condo
  module Tenant
    def self.switch!(tenant)
      ActiveRecord::Base.current_tenant = tenant
    end
  end
end
