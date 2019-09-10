class UsersController < ApplicationController
    
    def new
        @user = User.new
    end
   
    def create
        @user = User.create(user_params)
        # byebug
        session[:user_id] = @user.id
        redirect_to user_path(@user)
    end


    def show
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end
