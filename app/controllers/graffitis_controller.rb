class GraffitisController < ApplicationController
  before_action :set_message

  def create
    if @message
      graffiti = @message.graffitis.create(content: params[:content], user_id: params[:user_id])
      if graffiti.valid?
        render json: graffiti, except: [:created_at, :updated_at, :message_id]
      else
        render json: {errors: graffiti.errors.full_messages.to_sentence}, status: :unprocessable_entity
      end
    end
  end

  private

  def set_message
    @message = Message.find_by_id(params[:message_id])
  end

end
