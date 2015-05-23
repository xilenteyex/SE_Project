class FamliyPlanningInfoController < ApplicationController
    def index
    @fp = FamliyPlanningInfo.all
    #puts @child
  end
  def show
    cnic = session[:nurse_cnic]
    if cnic
      @nurse = NurseInfo.find_by_cnic(cnic)
      @fp = FamliyPlanningInfo.where(:nurse_cnic => cnic)
    else
      redirect_to login_path
    end
    
    #puts @child
  end
  def new
# puts(params[:name])
    FamliyPlanningInfo.create!(:name => params[:name], :nurse_cnic => session[:nurse_cnic], :family_number => params[:family],:husband_name => params[:husband], :age => params[:age], :provided_by => params[:provided_by], :method => params[:method])
  end
end


