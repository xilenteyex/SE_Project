class NurseInfoController < ApplicationController
  def index
	@nurse = NurseInfo.all()
  end
  def new
    NurseInfo.create!(:name => params[:name],:cnic => params[:cnic],:rank =>
 params[:rank], :date_of_birth => params[:dob], :password => params[:password]);
  end
  def show
  	@nurse = NurseInfo.all()
  end
end
