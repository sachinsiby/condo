module Condo
  module Tenant
    def self.switch!(tenant)
      RequestStore.store[:current_tenant] = tenant
    end

    def self.clear!
      switch!(nil)
    end
    
    def self.current_tenant
      RequestStore.store[:current_tenant]
    end
  end
end
