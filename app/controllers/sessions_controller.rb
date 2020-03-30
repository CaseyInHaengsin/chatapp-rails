class SessionsController < ApplicationController


    def new

    end

    def create
        user = User.find_by(username: params[:session][:username].downcase)
        if user && user.authenticate(params[:session][:password])
            flash[:success] = "Logged in!"
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash.now[:danger] = "You messed up, A-aron."
            render 'new'
        end


    end

    def destroy


    end

end