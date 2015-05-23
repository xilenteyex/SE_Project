class PregnantWomenInfoController < ApplicationController
    def index
    @pw = PregnantWomenInfo.all
    #puts @child
  end
  def show
    cnic = session[:nurse_cnic]
    if cnic
      @nurse = NurseInfo.find_by_cnic(cnic)
      @pw = PregnantWomenInfo.where(:nurse_cnic => cnic)
    else
      redirect_to login_path
    end
    
    #puts @child
  end
  def new
# puts(params[:name])
    PregnantWomenInfo.create!(:name => params[:name], :nurse_cnic => session[:nurse_cnic], :family_number => params[:family],:TT1 => params[:tt1], :TT2 => params[:tt2], :checkup1 => params[:c1], :checkup2 => params[:c2], :checkup3 => params[:c3], :checkup4 => params[:c4], :hospital => params[:hospital], :place_of_birth => params[:pob],  :result_pregnancy => params[:preg])
  end
end