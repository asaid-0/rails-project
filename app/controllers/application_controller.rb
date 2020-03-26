class ApplicationController < ActionController::Base

    # before_action :authenticate, except: [:login, :register, :signin, :signup]
    def authenticate
        redirect_to :login unless session[:id]
    end

end
