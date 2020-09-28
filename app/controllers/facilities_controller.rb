class FacilitiesController < ApplicationController

  def index
    @facilities = Facility.all
    render json: @facilities, except: [:created_at, :updated_at]
  end

  def show
    @facility = Facility.find(params[:id])
    render json: @facility, include: {messages: {except: [:created_at, :updated_at, :facility_id]}}
  end
end
