class AdminController < ApplicationController
    before_action :check_login
    def index
        redirect_to vietnameses_path
    end
end
