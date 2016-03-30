require 'spec_helper'

describe Condo::Tenant do
  context ".switch!" do
    let(:first_tenant) { Tenant.create }
    let(:second_tenant) { Tenant.create}
    it "switches the tenant correctly" do
      expect(Condo::Tenant.current_tenant).to eq(nil)

      Condo::Tenant.switch!(first_tenant)
      expect(Condo::Tenant.current_tenant.id).to eq(1)

      Condo::Tenant.switch!(second_tenant)
      expect(Condo::Tenant.current_tenant.id).to eq(2)

    end
  end
end
