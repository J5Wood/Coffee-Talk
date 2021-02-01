class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        user = User.where(name: params[:user][:name])[0]
        if user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            @user = User.new
            render :new
        end
    end

    def delete
        session.clear
        redirect_to "/"
    end
end