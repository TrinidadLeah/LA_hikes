class HikesController < ApplicationController

  def index
    @hikes = Hike.all

  end

  def new
    @hike = Hike.new
  end


  def create


    @hike = Hike.new(user_params)
    @hike.user_id = current_user.id
    if @hike.save
      redirect_to root_path
    else
      render :new
    end
  end
private

    # Implement Strong Params
    def user_params
     params.require(:hike).permit(:location, :image_uri, :description, :user_id)
    end
end
