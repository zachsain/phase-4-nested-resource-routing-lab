class UsersController < ApplicationController
# rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  def show
    user = User.find_by(id: params[:id])
    render json: user, include: :items
  end


  # def show
  #   item = Item.find(params[:id])
  #   render json: item
  # end 

  # def create 
  #   user = User.find_by(params[:id])
  #   item = Item.create(params)
  #   user << item
  #   render json: user
  # end 


  private

  # def render_not_found_response
  #   render json: { error: "User not found" }, status: :not_found
  # end

end
