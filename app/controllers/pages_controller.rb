class PagesController < ApplicationController


  before_action :check_if_logged_in, only: :profile

  before_action :check_if_admin, only: :admin

  def home

    @avatars = Avatar.all
    featured_list = Avatar.order(created_at: :asc).reverse_order.limit(3).reverse
    @featured1 = featured_list.first
    @featured2 = featured_list.second
    @featured3 = featured_list.third
    #raise 'hell'
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
