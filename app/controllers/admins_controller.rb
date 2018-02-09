class AdminsController < ApplicationController

   before_action :check_if_admin
  # before_action :check_if_admin, only: [:index]

  def profile
    @user = @current_user

    render :show

  end

  # create
  def new
     @user = User.new

  end

  def create
    user = User.create admin_params

    if user.id.present?
      session[:user_id] = user.id

      user.save

      redirect_to profile_path

    else

      flash[:error] = "Errror creating account. Try again."

      flash[:error_messages] = user.errors.full_messages

      redirect_to new_user_path

    end

  end

  # read
  def dashboard

    @user = User.all

  end

  def show
    @user = User.find params[:id]

  end

  #update/edit
  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])

    end

    user.update_attributes(admin_params)
    user.save

    redirect_to user_path(user)

  end

  def destroy

    User.destroy params[:id]

    redirect_to users_path

  end


  private

  def admin_params

    params.require(:user).permit(:name, :email, :password, :password_confirmation, :coins, :is_admin)

  end

end
