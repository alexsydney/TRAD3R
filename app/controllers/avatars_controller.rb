class AvatarsController < ApplicationController

  before_action :check_if_logged_in, only: [:new, :create, :edit, :update, :destroy]

  # Create
  def new

    @avatar = Avatar.new

  end

  def create

    avatar = Avatar.create avatar_params

    avatar.user = @current_user

    if avatar.save
      redirect_to avatar
    else
      # avatar could not be saved
    flash[:errors] = avatar.errors.full_messages
      redirect_to new_avatar_path
    end

  end

  # Read
  def home
    @avatars = Avatar.all

  end

  # search
  def search
    @results = Avatar.where('name LIKE ?', "%#{params[:query]}%")
  end

  # List
  def index
      @avatars = Avatar.all
  end

  def show
    @avatar = Avatar.find params[:id]

  end

  # edit/update
  def edit

      @avatar = Avatar.find params[:id]

  end

  def update

        avatar = Avatar.find params[:id]

        avatar.update avatar_params

        redirect_to avatar_path
  end

  # Delete
  def destroy

    Avatar.destroy params[:id]

    redirect_to avatars_path

  end


  def listing

  end

  def price

  end

  def description

  end


  # your_profit_path
  def your_profit

    @profits = Avatar.sum(value)

  end

  private

  def avatar_params
    params.require(:avatar).permit(:src,
      :name, :description, :value, :user_id, :is_sale)

  end

end
