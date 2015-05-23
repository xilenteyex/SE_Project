class SessionsController < ApplicationController
  def new
  end
  def create
      @cnic = params[:cnic]
      @password = params[:password]
      user = NurseInfo.find_by_cnic(@cnic)
      if user and user.password == @password
        log_in user
        @current_user = user
        redirect_to nurse_mainpage_show_path
      else
        flash.now[:notice] = 'Incorrect user name and/or password'
        render 'new'
      end
  end

  def destroy
    if logged_in?
      flash[:notice] = 'Successfully logged out of the system. See you soon :)'
      log_out
    end
    redirect_to login_path
    # redirect_to something
  end

end
