class FamliyPlanningInfoController < ApplicationController
    def index
    @fp = FamliyPlanningInfo.all
    #puts @child
  end
  def show
    @cnic = session[:nurse_cnic]
    if @cnic
      @nurse = NurseInfo.find_by_cnic(@cnic)
      @fp = FamliyPlanningInfo.where(:nurse_cnic => @cnic)
    else
      flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      redirect_to login_path
    end
    
    #puts @child
  end
  def new
    @cnic = session[:nurse_cnic]
    if @cnic  
    else
      flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      redirect_to login_path
    end
  end
  def create
    @cnic = session[:nurse_cnic]
    # redirect_to nurse_mainpage_show_path
    if @cnic
      FamliyPlanningInfo.create!(:name => params[:name], :nurse_cnic => session[:nurse_cnic], :family_number => params[:family],:husband_name => params[:husband], :age => params[:age], :provided_by => params[:provided_by], :method => params[:method])
      flash[:notice] = 'Sucesss! a new Family entry has been recorded.'
      redirect_to nurse_mainpage_show_path
    else
      flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      redirect_to login_path
    end
  end
end


