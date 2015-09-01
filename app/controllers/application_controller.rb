class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user, :logged_in? #make these methods are available for other views
  
  
  def current_user
    @current_user ||= Chef.find(session[:chef_id]) if session[:chef_id] # ||= store whatever return and it memorizes all the time
    
  end
  
  def logged_in?
     !!current_user  #make sure current user makes request or not
  end
  
  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in to perform this action"
      redirect_to :back
    end
  end

end


