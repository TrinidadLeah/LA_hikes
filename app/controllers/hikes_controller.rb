class HikesController < ApplicationController
 before_action :current_user, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show]

  def index
    @hikes = Hike.all
  end

  def show
    @hike = Hike.find(params[:id])
  end

  def new
    @hike = Hike.new
  end

  def create

    @hike = Hike.new(hike_params)
    @hike.user_id = current_user.id
    if @hike.save
      redirect_to root_path
    else
      render :new
    end
  end

def edit
  @hike = Hike.find(params[:id])
end

def update
  @hike = Hike.find(params[:id])
  @hike.update_attributes(hike_params)
  redirect_to root_path
end

 def destroy
    @hike = Hike.find(params[:id])
    @hike.destroy
    redirect_to root_path
  end

private

    # Implement Strong Params
    def hike_params
     params.require(:hike).permit(:location, :image_uri, :description, :user_id)
    end
end
