class DashboardsController < ApplicationController
  before_action :check_if_logged_in

  def index
    @avatars = @current_user.avatars

    # @phrases = @current_user.phrases

  end


end
