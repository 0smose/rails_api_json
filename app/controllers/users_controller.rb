class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user, only: [:show]
  
    def show
      render json: {
        "username": current_user.username,
        "first_name": current_user.first_name,
        "last_name": current_user.last_name[0],
      }
    end
  
    private 
  
    def set_user
      @user = User.find(params[:id])
    end
end
