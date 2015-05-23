class NurseMainpageController < ApplicationController
  def show
  	cnic = session[:nurse_cnic]
  	if cnic
  		@nurse = NurseInfo.find_by_cnic(cnic)
  		@name = @nurse.name
    else
      flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      redirect_to login_path
    end
  end
end
