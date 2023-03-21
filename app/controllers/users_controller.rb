class UsersController < ApplicationController
# GET/users/:id
def show
    user =User.find(params[:id])
    render json: user.as_json(include: { items: { only: [:id, :name, :description, :price] } }, only: [:id, :username, :city])end
end
