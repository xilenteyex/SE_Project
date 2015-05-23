class PregnantWomenInfoController < ApplicationController
    def index
    @pw = PregnantWomenInfo.all
  end
  def show
    @cnic = session[:nurse_cnic]
    if @cnic
      @nurse = NurseInfo.find_by_cnic(@cnic)
      @pw = PregnantWomenInfo.where(:nurse_cnic => @cnic)
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
      if params[:name].blank? || params[:family].blank? || params[:tt1].blank? || params[:tt2].blank? || params[:c1].blank? || params[:c2].blank? || params[:c3].blank? || params[:c4].blank? || params[:hospital].blank? || params[:pob].blank? || params[:preg].blank?
        flash[:notice] = 'one or more fields are empty'
        render 'new'
      else
        PregnantWomenInfo.create!(:name => params[:name], :nurse_cnic => session[:nurse_cnic], :family_number => params[:family],:TT1 => params[:tt1], :TT2 => params[:tt2], :checkup1 => params[:c1], :checkup2 => params[:c2], :checkup3 => params[:c3], :checkup4 => params[:c4], :hospital => params[:hospital], :place_of_birth => params[:pob],  :result_pregnancy => params[:preg])
        flash[:notice] = 'Sucesss! a new Pregnant Woman entry has been recorded.'
        redirect_to nurse_mainpage_show_path
      end
    else
      flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      redirect_to login_path
    end
  end

end