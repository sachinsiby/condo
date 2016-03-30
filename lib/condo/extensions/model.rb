module Condo
  module Extensions
    module Model
      cattr_accessor :current_tenant
      def tenanted
        default_scope { where(tenant_id: current_tenant.id) }
      end

      def current_tenant
        Condo::Tenant.current_tenant
      end
    end
  end
end
