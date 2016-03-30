require 'spec_helper'

describe Condo::Extensions::Model do
  context ".tenanted" do
    after(:each) { Condo::Tenant.clear! }
    let(:scoping_query) {"SELECT \"tenanted_models\".* FROM \"tenanted_models\" WHERE \"tenanted_models\".\"tenant_id\" = 1"}
    it "sets a default scope only on the tenanted model" do
      #FIXME: this spec shouldn't use Condo::Tenant
      Condo::Tenant.switch!(Tenant.new(id: 1))
      expect(TenantedModel.all.to_sql).to include(scoping_query)
      expect(NonTenantedModel.all.to_sql).to_not include(scoping_query)
    end
  end
end
