class PagesController < ApplicationController


  before_action :check_if_logged_in, only: :profile

  before_action :check_if_admin, only: :admin

  def home

    @avatars = Avatar.all

    # @user = current_user

  end

  def search

  end


  # user access to profile
  def profile

  end

  # user has admin level
  def admin

  end

  # guest login
  def guest

  end

end
