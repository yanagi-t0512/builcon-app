class BuildingsController < ApplicationController

  def index
    #@buildings = Building.all
    @buildings = Building.search(params[:search]).page(params[:page])
  end

  def new
    @building = Building.new
  end

  def create
    building = Building.new(building_params)
    if building.save
      flash[:notice] = "「#{building.property_name}」「#{building.room_number}」を作成しました"
      redirect_to building
    else
      redirect_to new_building_path, flash: {
        building: building,
        error_messages: building.errors.full_messages
      }
    end
  end

  def show
    @building = Building.find(params[:id])
  end

  def edit
    @building = Building.find(params[:id])
  end
  
  def update
    building = Building.find(params[:id])
    building.update(building_params)
    redirect_to building
  end

  def destroy
    building = Building.find(params[:id])
    building.delete
    redirect_to buildings_path, flash: { notice:  "「#{building.property_name}」「#{building.room_number}」を削除しました"}
  end

  private

  def building_params
    params.require(:building).permit(:property_name, :room_number, :customer_name)
  end

end
