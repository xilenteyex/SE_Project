class ChildInfoController < ApplicationController
  def index
    @child = ChildInfo.all
  end
  def show
    @cnic = session[:nurse_cnic]
    if @cnic
      @nurse = NurseInfo.find_by_cnic(@cnic)
      @child = ChildInfo.where(:nurse_name => @nurse.name)
    else
      flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      redirect_to login_path
    end
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
      if params[:name].blank? || params[:family].blank? || params[:nurse].blank? || params[:dob].blank? || params[:p1].blank? || params[:p2].blank? || params[:p3].blank? || params[:p4].blank? || params[:m1].blank? || params[:m2].blank?
        flash[:notice] = 'one or more fields are empty'
        render 'new'
      else
        ChildInfo.create!(:name => params[:name], :cnic => session[:nurse_cnic], :family_number => params[:family],:nurse_name => params[:nurse], :date_of_birth => params[:dob], :polio_1 => params[:p1], :polio_2 => params[:p2], :polio_3 => params[:p3], :polio_4 => params[:p4], :measles_1 => params[:m1], :measles_2 => params[:m2])
        flash[:notice] = 'Sucesss! a new Child entry has been recorded.'
        redirect_to nurse_mainpage_show_path
      end
    else
      flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      redirect_to login_path
    end
  end
end



  
