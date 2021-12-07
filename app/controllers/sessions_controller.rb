class SessionsController < ApplicationController

    def new
    end

    def create
      @user = User.find_by_username(params[:session][:username])
      if @user
        if @user.password == params[:session][:password]
          session[:user_id] = @user.id
          redirect_to @user
        else
          @message = "Incorrect password."
          render 'new'
        end
      else
        @message = "User name not found."
        render 'new'
      end
    end

    def destroy
      reset_session
      redirect_to '/login'
    end
end
