class SessionsController < ApplicationController
  def new
      @abc = "yippi"
  end
  def create
      # @abc = "yippiiii"
      @abc = params[:cnic]
      @def = params[:password]
      user = NurseInfo.find_by_cnic(@abc)
      if user
        if user.password == @def
          log_in user
          @current_user = user
          # redirect_to user
          # redirect_to nurses_info
          @abc = "success!"
          # redirect_to :controller => 'nurse_mainpage_controller', :action => 'show'
          redirect_to nurse_mainpage_show_path
        end
      end
      # redirect_to nurses_info
      # render 'new'
  end

  def destroy
    log_out if logged_in?
    # redirect_to something
  end

end
