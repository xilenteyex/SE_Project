class ReportsController < ApplicationController
	def index
		if logged_in?
		else
			flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      		redirect_to login_path
		end
	end

	def child_report_result
		if logged_in?
			session[:name] = params[:child_name]
			if(params[:vaccination] == "Polio")
			  redirect_to reports_polio_report_result_path
			elsif (params[:vaccination] == "Measles")
	                  redirect_to reports_measles_result_path
			else 
	                  redirect_to reports_all_result_path		
			end
		else
			flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      		redirect_to login_path
		end
	end 

	def child_age_report
		if logged_in?
			if(params[:age] == "Below 6 Months")
			  @child = ChildInfo.where(cnic: session[:nurse_cnic],date_of_birth:  (Time.now- 6.months)..Time.now)
			end
			if(params[:age] == "12-23 Months")
	                  @child = ChildInfo.where(cnic: session[:nurse_cnic],date_of_birth:  (Time.now- 23.months..Time.now-12.months))
	                end
			if(params[:age] == "Below 3 years")
	                  @child = ChildInfo.where(cnic: session[:nurse_cnic],date_of_birth:  (Time.now- 3.years..Time.now-24.months))
	                end
			if(params[:age] == "Below 5 years")
	                  @child = ChildInfo.where(cnic: session[:nurse_cnic],date_of_birth:  (Time.now- 5.years..Time.now-3.years))
	                end
	    else
	    	flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      		redirect_to login_path
	    end
	end	
	def vaccine_dose
		if logged_in?
			if (params[:dose] == "Polio 1")
			  @child = ChildInfo.where(cnic: session[:nurse_cnic],date_of_birth: (Time.now-2.months..Time.now-1.month))
			end
			if (params[:dose] == "Polio 2")
			  @child = ChildInfo.where(cnic: session[:nurse_cnic],date_of_birth: (Time.now-3.months..Time.now-2.months))
			end
			if (params[:dose] == "Polio 3")
			  @child = ChildInfo.where(cnic: session[:nurse_cnic],date_of_birth: (Time.now-4.months..Time.now-3.months))
			end
			if (params[:dose] == "Measles 1")
	                  @child = ChildInfo.where(cnic: session[:nurse_cnic],date_of_birth: (Time.now-9.months..Time.now))
	                end 
	                if (params[:dose] == "Measles 2")
	                  @child = ChildInfo.where(cnic: session[:nurse_cnic],date_of_birth: (Time.now-15.months..Time.now))
	                end
	    else
	    	flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      		redirect_to login_path
	    end
	end
	
	def woman_vaccination
		if logged_in?
			if(params[:vaccination] == "TT2")
			  @woman = PregnantWomenInfo.where(nurse_cnic: session[:nurse_cnic], TT2: (Time.now-100.years..Time.now))
			end
			if(params[:vaccination] == "TT1")
	                  @woman = PregnantWomenInfo.where(nurse_cnic: session[:nurse_cnic],TT1: (Time.now-100.years..Time.now))
	                end
    	else
    		flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      		redirect_to login_path
    	end
    end

	def miscarriages
		if logged_in? 
			@woman = PregnantWomenInfo.where(nurse_cnic: session[:nurse_cnic], result_pregnancy: "Miscarriage")
		else
			flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      		redirect_to login_path
		end
	end
	
	def delevired_by
		if logged_in?
		@woman = PregnantWomenInfo.where(nurse_cnic: session[:nurse_cnic], hospital: params[:delev])
		else
			flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      		redirect_to login_path
		end
	end

	def visits
		if logged_in?
			if(params[:visit] == "4")
			  @woman = PregnantWomenInfo.where(nurse_cnic: session[:nurse_cnic], checkup4: (Time.now-100.years..Time.now)) 
			end
			if(params[:visit] == "3")
			   @woman = PregnantWomenInfo.where(nurse_cnic: session[:nurse_cnic], checkup3: (Time.now-100.years..Time.now))
			end
			 if(params[:visit] == "2")
	                   @woman = PregnantWomenInfo.where(nurse_cnic: session[:nurse_cnic], checkup2: (Time.now-100.years..Time.now))
	                end
			 if(params[:visit] == "1")
	                   @woman = PregnantWomenInfo.where(nurse_cnic: session[:nurse_cnic], checkup1: (Time.now-100.years..Time.now))
	                end
	    else
	    	flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      		redirect_to login_path
	    end
	end

    def family_planning
    	if logged_in?
			if(params[:provider] == "Any")
			  @family = FamliyPlanningInfo.where(nurse_cnic: session[:nurse_cnic], method: params[:contra])
			else
			  @family = FamliyPlanningInfo.where(nurse_cnic: session[:nurse_cnic],method: params[:contra], provided_by: params[:provider])	
			end
		else
			flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      		redirect_to login_path
		end
	end

	def polio_report_result
		if logged_in?
			@child = ChildInfo.find_by_name_and_cnic(session[:name],session[:nurse_cnic])
			session[:name] = nil
		else
			flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      		redirect_to login_path
		end
	end

	def measles_result
		if logged_in?
            @child = ChildInfo.find_by_name_and_cnic(session[:name],session[:nurse_cnic])
            session[:name] = nil
        else
        	flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      		redirect_to login_path
        end
    end


	def all_result
		if logged_in?
            @child = ChildInfo.find_by_name_and_cnic(session[:name],session[:nurse_cnic])
            session[:name] = nil
        else
        	flash[:notice] = 'It looks like you are not logged in. Please Log in First'
      		redirect_to login_path
        end
    end
end
