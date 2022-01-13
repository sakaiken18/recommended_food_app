class LikesController < ApplicationController
  def create
    @food = Food.find(params[:food_id])
    current_user.likes.create!(food_id: @food.id)
  end

  def destroy
    @food = Food.find(params[:food_id])
    current_user.likes.find_by(food_id: params[:food_id]).destroy!
  end
end
