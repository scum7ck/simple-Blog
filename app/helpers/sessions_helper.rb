module SessionsHelper
  #logs in the given admin
  def log_in(admin)
    session[:admin_id] = admin.id   
  end

  #returns the current logged-in admin (if any).
  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id])
  end

  #returns true if the admin is logged in, false otherwise
  def logged_in?
    !current_admin.nil?    
  end

  #logs out the current admin
  def log_out
    session.delete(:admin_id)
    @current_admin = nil    
  end
end
