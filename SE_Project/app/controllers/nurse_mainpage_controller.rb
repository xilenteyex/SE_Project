class NurseMainpageController < ApplicationController
  def show
  	@name = "empty.."
  	cnic = session[:nurse_cnic]
  	if cnic
  		@nurse = NurseInfo.find_by_cnic(cnic)
  		@name = @nurse.name
  	end
  end
end
