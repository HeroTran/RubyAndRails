class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    helper_method :current_user
    def current_user
        @current_user = session[:user_name]
    end
    #check user login redirect_to sign in
    #author : Manh Quoc
    #since : 21/05/2014
    def check_login
        if !session[:user_name]
            redirect_to sign_in_path
        end
    end
end
