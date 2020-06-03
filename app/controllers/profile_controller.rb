class ProfileController < ApplicationController

    before_action :authenticate_user!


    def show
      render json: {
        "username": current_user.username,
        "first_name": current_user.first_name,
        "last_name": current_user.last_name[0],
      }
    end

end
