class Api::V1::LocationsController < ApplicationController
    before_action :find_location, only: [:update]

    def index
        @location = Location.all 
        render json: @location 
    end 

    def new
        @location = Location.new 
    end 

    def create
        @location = Location.create(location_params)
        render json: @location, status: :accepted
    end 

    def update 
        @location.update(location_params)
        if @location.save
            render json: @location, status: :accepted 
        else 
            render json: { errors: @location.errors.full_messages }, status: :unprocessible_entity
        end 
    end 

    def find_location
        @location = location.find(params[:id])
    end


    private

    def location_params 
        params.permit(:name, :coordinates)
    end


end
