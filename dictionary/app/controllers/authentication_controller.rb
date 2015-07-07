class AuthenticationController < ApplicationController
    #sign in page
    #author:Manh Quoc
    #since : 15/05/2014
    def sign_in
        if session[:user_name]
            redirect_to vietnameses_path
            return
        end
        @user = User.new
        render :layout => nil
    end
    #function login
    #author:Manh Quoc
    #since : 15/05/2014
    def login
        message ="Please, enter user name, password"
        if(params[:user][:user_name]!="" && params[:user][:user_password]!="")
            password = Digest::MD5.hexdigest(params[:user][:user_password])
            user = User.authenticate(params[:user][:user_name])
            if (user)
                if (user.deleted ==0)
                    if(user.user_password == password)
                        session[:user_name] = user.user_name
                        redirect_to vietnameses_path
                        return
                    else
                        message="Password incorrect"
                    end
                else
                    message="Not active"
                end
            else
                message="User name incorrect"
            end
        end
        redirect_to sign_in_path, alert: message
    end
    #function logout
    #author:Manh Quoc
    #since : 15/05/2014
    def sign_out
        session[:user_name]=nil
        redirect_to action: 'sign_in'
    end
end
