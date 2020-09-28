class GraffitisController < ApplicationController

  def create
    message = Message.find(params[:message_id])
    message.graffitis.create(user_id: params[:user_id], content: params[:message])
    render json: message, include: [:graffitis]
  end
end
