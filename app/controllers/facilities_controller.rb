class FacilitiesController < ApplicationController

  def index
    @facilities = Facility.all
    render json: @facilities, except: [:created_at, :updated_at]
  end

  def show
    @facility = Facility.find(params[:id])
    render json: @facility, include: {messages:
    {
      except: [:created_at, :updated_at, :facility_id],
      include: {
          graffitis: {
            except: [:created_at, :updated_at, :user_id, :message_id]
          }
        }
      }
    }
  end
end
