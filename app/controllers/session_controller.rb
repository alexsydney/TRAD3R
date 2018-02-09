class SessionController < ApplicationController


  def new

  end

  def create

    user = User.find_by email: params[:email]

    if user.present? && user.authenticate( params[:password])
      # successful login and create a cookies session to keep tracking userId
      session[:user_id] = user.id

      # take to root path
      redirect_to root_path
      # take user to their profile

    else
        # bad credentials/unsuccessful login
        flash[:error] = "Invalid user name or passord incorrect."
        # take user to main page
        redirect_to login_path
    end

  end

  def destroy
    session[:user_id] = nil

    redirect_to root_path

  end

end
