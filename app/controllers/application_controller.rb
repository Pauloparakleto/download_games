class ApplicationController < ActionController::Base
    
    def current_user
        return @current_user = session[:user_id] if session[:user_id]
    end
    def authenticate_use
        redirect_to '/login' unless current_user
    end
end
