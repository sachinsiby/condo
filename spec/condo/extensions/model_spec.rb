require 'spec_helper'

describe Condo::Extensions::Model do
  it "allows setting the current_tenant" do
    expect do
      ActiveRecord::Base.current_tenant = OpenStruct.new(id: 1)
    end.not_to raise_error
    expect(TenantedModel.current_tenant.id).to eq(1)
  end

  context ".tenanted" do
    before(:each) { ActiveRecord::Base.current_tenant = OpenStruct.new(id: 1) }
    after(:each) { ActiveRecord::Base.current_tenant = nil }
    let(:scoping_query) {"SELECT \"tenanted_models\".* FROM \"tenanted_models\" WHERE \"tenanted_models\".\"tenant_id\" = 1"}
    it "sets a default scope only on the tenanted model" do
      expect(TenantedModel.all.to_sql).to include(scoping_query)
      expect(NonTenantedModel.all.to_sql).to_not include(scoping_query)
    end
  end
end
