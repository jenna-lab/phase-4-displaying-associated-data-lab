class ItemsController < ApplicationController
#GET /items
def index
    items = Item.all
    render json: items.as_json(include: { user: { only: [:id, :username, :city] } }, only: [:id, :name, :description, :price])end
end
