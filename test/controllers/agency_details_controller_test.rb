require 'test_helper'

class AgencyDetailsControllerTest < ActionDispatch::IntegrationTest
  let(:agency_detail) { agency_details :one }

  it "gets index" do
    get agency_details_url
    value(response).must_be :success?
  end

  it "creates agency_detail" do
    expect {
      post agency_details_url, params: { agency_detail: { age_minimum: agency_detail.age_minimum, description: agency_detail.description, lat_loc: agency_detail.lat_loc, long_loc: agency_detail.long_loc, name: agency_detail.name, volunteer_type: agency_detail.volunteer_type } }
    }.must_change "AgencyDetail.count"

    value(response.status).must_equal 201
  end

  it "shows agency_detail" do
    get agency_detail_url(agency_detail)
    value(response).must_be :success?
  end

  it "updates agency_detail" do
    patch agency_detail_url(agency_detail), params: { agency_detail: { age_minimum: agency_detail.age_minimum, description: agency_detail.description, lat_loc: agency_detail.lat_loc, long_loc: agency_detail.long_loc, name: agency_detail.name, volunteer_type: agency_detail.volunteer_type } }
    value(response.status).must_equal 200
  end

  it "destroys agency_detail" do
    expect {
      delete agency_detail_url(agency_detail)
    }.must_change "AgencyDetail.count", -1

    value(response.status).must_equal 204
  end
end
