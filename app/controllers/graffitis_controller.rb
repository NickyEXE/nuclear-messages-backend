class GraffitisController < ApplicationController
  before_action :set_message

  def create
    if @message
      graffiti = @message.graffitis.create(content: params[:content], user_id: params[:user_id])
      render json: graffiti, except: [:created_at, :updated_at, :message_id]
    end
  end

  private

  def set_message
    @message = Message.find_by_id(params[:message_id])
  end

end
