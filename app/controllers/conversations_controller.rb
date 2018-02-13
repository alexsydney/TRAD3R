class ConversationController < ApplicationController

  def create

  end

  private

  def add_to_conversations
    session[:conversations] ||= []
    session[:conversations] << @conversation.id
  end

  def conversated?
    session[:conversations].include?(@conversation.id)
  end

  def close
    @conversation = Conversation.find(params[:id])

    session[:conversation].delete(@conversation.id)

    respond_to do |format|
      format.js
    end
  end


end
