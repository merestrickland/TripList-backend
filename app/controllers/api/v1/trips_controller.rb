class Api::V1::TripsController < ApplicationController
    # before_action :find_trip, only: [:update]
    before_action :authorized, only: [:create]

    def index
        @trips = Trip.all 
        render json: @trips 
    end

    def show
        @trip = Trip.find(params[:id])
        render json: @trip 
    end

    def new
        @trip = Trip.new
        render json: @trip, status: :accepted
    end

    def create
        @trip = Trip.create(trip_params)
        # byebug
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

    def destroy 
        @trip = Trip.find(params[:id])
        @trip.destroy
        render json: {messages: 'this worked'}
    end

   

    private
    
    def find_trip
        @trip = Trip.find(params[:id])
    end

    def trip_params
        params.permit(:name, :location, :user_id)
    end
    
end
