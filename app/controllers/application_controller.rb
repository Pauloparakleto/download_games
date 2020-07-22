class ApplicationController < ActionController::Base
    
    def current_user
        return @current_user = session[:user_id] if session[:user_id]
    end
    def authenticate_use
    end
end
