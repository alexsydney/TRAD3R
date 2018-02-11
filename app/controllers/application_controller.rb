class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :fetch_user

  def check_if_logged_in
    if @current_user.nil?
      flash[:error] = "You must be login to access your profile"

      redirect_to login_path

    end

  end

  def check_if_admin
    unless @current_user.present? && @current_user.is_admin?
      flash[:error] = "You must have admin to access this page"
      redirect_to login_path
    end
  end

  private

  def fetch_user

    if session[:user_id].present?
      @current_user = User.find_by id: session[:user_id]
      
    end

    session[:user_id] = nil unless @current_user.present?

  end

end
