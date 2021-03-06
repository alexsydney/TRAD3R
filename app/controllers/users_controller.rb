class UsersController < ApplicationController

   before_action :check_if_logged_in, except: [:new, :create, :show, :profile]


  # before_action :check_if_logged_in, only: [:profile]

   before_action :check_if_admin, except: [:new, :create, :show, :profile]
  # before_action :check_if_admin, only: [:index]

  def profile

    # @user = @current_user
    # render :show

      # @results = Avatar.where('name LIKE ?', "%#{params[:query]}%")

      # @mine  = Avatar.where user: ??????
      # @not_mine = Avatar.where user: ??????
  end

  # create
  def new

      @user = User.new

  end

  def create

    is_admin = false
    
    user = User.create user_params

    if user.persisted? # user.persisted  # user.id.present?
      session[:user_id] = user.id

      # if params[:file].present?
      #   req = Cloudinary::Uploader.upload(params[:file])
      #
      #   user.image = req["public_id"]
      # end

      user.save

      redirect_to user

    else

      flash[:error] = "Error creating account. Try again."
      flash[:error_messages] = user.errors.full_messages

      redirect_to new_user_path

    end

  end


  # Read
  def index
    @users = User.all

  end

  def show
    @user = User.find params[:id]
    @avatars = Avatar.where user_id: params[:id]
    # @avatar = Avatar.find user_id: @user.id
    # raise 'hell'

  end

  # Update/edit
  def edit
      @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])

      # user.image = req["public_id"]
    end

    user.update_attributes(user_params)
    user.save

    redirect_to user_path(user)

  end


  def destroy

    User.destroy params[:id]

    redirect_to users_path


  end


  private

  def user_params

    params.require(:user).permit(:name, :email, :password, :password_confirmation, :coins)

  end

end
