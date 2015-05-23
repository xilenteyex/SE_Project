class NurseInfoController < ApplicationController
  def index
	@nurse = NurseInfo.all()
  end
  def new
	end
  def show
  	@nurse = NurseInfo.all()
  end

  def create
    if params[:name].blank? || params[:cnic].blank? || params[:rank].blank? || params[:dob].blank? || params[:password].blank?
        flash[:notice] = 'one or more fields are empty'
        render 'new'
    else
      NurseInfo.create!(:name => params[:name],:cnic => params[:cnic],:rank =>
      params[:rank], :date_of_birth => params[:dob], :password => params[:password]);
      flash[:notice] = 'Account created successfully! You have been logged into the system :)'
      log_in NurseInfo.find_by_cnic(params[:cnic])
      redirect_to nurse_mainpage_show_path
    end
  end
end
