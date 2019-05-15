class Api::V1::TripsController < ApplicationController
    before_action :find_note, only: [:update]

    def index
        @trips = Trip.all 
        render json: @trips 
    end

    def new
        @trip = Trip.new
        render json: @trip, status: :accepted
    end

    def update 
        @trip.update(trip_params)
        if @trip.save
            render json: @trip, status: :accepted
        else
            render json: { errors: @note.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def find_trip
        @trip = Trip.find(params[:id])
    end

    private
    
    def trip_params
        params.permit(:name)
    end
    
end
