class ReportsController < ApplicationController
	def index
	end

	def child_report_result
		session[:name] = params[:child_name]
		if(params[:vaccination] == "Polio")
		  redirect_to reports_polio_report_result_path
		elsif (params[:vaccination] == "Measles")
                  redirect_to reports_measles_result_path
		else 
                  redirect_to reports_all_result_path		
		end
	end 

	def polio_report_result
		@child = ChildInfo.find_by_name(session[:name])
		session[:name] = nil
	end

	def measles_result
                @child = ChildInfo.find_by_name(session[:name])
                session[:name] = nil
        end


	def all_result
                @child = ChildInfo.find_by_name(session[:name])
                session[:name] = nil
        end
end
