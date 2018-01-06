class AgencyDetailsController < ApplicationController
  before_action :set_agency_detail, only: [:show, :update, :destroy]

  # GET /agency_details
  def index
    @agency_details = AgencyDetail.all

    render json: @agency_details.as_json(only:[:id, :name, :age_minimum, :volunteer_type, :lat_loc, :long_loc, :description, :photo_url, :url])
  end

  # GET /agency_details/1
  def show
    render json: @agency_detail.as_json(only:[:id, :name, :age_minimum, :volunteer_type, :lat_loc, :long_loc, :description, :photo_url, :url])
  end

# GET /search_agency_details
  def search
    @query = {}
    @query[:volunteer_type] = params[:volunteer_type] if params[:volunteer_type]

    render json: AgencyDetail.where(@query).as_json(only:[:id, :name, :age_minimum, :volunteer_type, :lat_loc, :long_loc, :description, :photo_url, :url])
  end

  # POST /agency_details
  def create
    @agency_detail = AgencyDetail.new(agency_detail_params)

    if @agency_detail.save
      render json: @agency_detail, status: :created, location: @agency_detail
    else
      render json: @agency_detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /agency_details/1
  def update
    if @agency_detail.update(agency_detail_params)
      render json: @agency_detail
    else
      render json: @agency_detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /agency_details/1
  def destroy
    @agency_detail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agency_detail
      @agency_detail = AgencyDetail.find(params[:id])
      # @agency_detail = AgencyDetail.where(volunteer_type: params[:volunteer_type])

    end

    # Only allow a trusted parameter "white list" through.
    def agency_detail_params
      params.require(:agency_detail).permit(:name, :age_minimum, :volunteer_type, :lat_loc, :long_loc, :description, :photo_url, :url
      )
    end
end
