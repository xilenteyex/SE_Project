module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:nurse_cnic] = user.cnic
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= NurseInfo.find_by_cnic(session[:nurse_cnic])
  end

  def logged_in?
    !session[:nurse_cnic].blank?
  end

  # Logs out the current user.
  def log_out
    session.delete(:nurse_cnic)
    @current_user = nil
  end

end
