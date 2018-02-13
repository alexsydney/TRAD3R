class MessagesController < ApplicationController

  def create
    @converation = Conversation.includes(:recipient).find(params[:conversation_id])

    @message = @converation.message.create(message_params)

    respond_to do |format|
      format.js
    end

  end

  private

  def message_params
    params.require(:message).permit(:user_id, :bod)
  end

end
