require "test_helper"

describe AgencyDetail do
  let(:agency_detail) { AgencyDetail.new }

  it "must be valid" do
    value(agency_detail).must_be :valid?
  end
end
