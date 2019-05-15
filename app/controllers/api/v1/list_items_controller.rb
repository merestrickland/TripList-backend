class Api::V1::ListItemsController < ApplicationController
    before_action :find_list_items, only: [:update]

    def index
        @list_items = ListItem.all 
        render json: @list_items
    end 

    def new
        @list_item = ListItem.new 
    end 

    def create
        @list_item = ListItem.create(list_item_params)
        render json: @list_item, status: :accepted
    end

    def update 
        @list_item.update(list_item_params)
        if @list_item.save
            render json: @list_item: :accepted 
        else
            render json: { errors: @task.errors.full_messages }, status: :unprocessible entity
        end 
    end 

    private

    def list_item_params
        params.permit(list_item_id, :name, :description, :img_url)
    end

    def find_list_item 
        @list_item = ListItem.find(params[:id])
    end 


end
