class AvatarsController < ApplicationController


  before_action :check_if_logged_in, only: [:new, :create, :edit, :update, :destroy]


  def home

    # @avatars = Avatar.all

  end

  # Create
  # def create
  #
  #   @avatar = Avatar.new
  #
  # end

  # def create
  #
  #   avatar = Avatar.new
  #
  #
  # end


  def search

    @results = Avatar.where('name LIKE ?', "%#{params[:query]}%")

  end


end
