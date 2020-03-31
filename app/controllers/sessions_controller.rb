class SessionsController < ApplicationController


    def new

    end

    def create
        user = User.find_by(username: params[:session][:username].downcase)
        if user && user.authenticate(params[:session][:password])
            flash[:success] = "Logged in!"
            session[:user_id] = user.id
            redirect_to root_path
        else
            flash.now[:danger] = "You messed up, A-aron."
            render 'new'
        end


    end

    def destroy
        session[:user_id] = nil
        flash[:success] = "you have successfully logged out"
        redirect_to login_path

    end

end