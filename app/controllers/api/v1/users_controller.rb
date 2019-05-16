class Api::V1::UsersController < ApplicationController

    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: { user: UserSerializer.new(@user) }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end 
    end 

    def show
        @user = User.find(params[:id])
        render json: @user 
    end

    def login
        #Check to see if the email and password is in the database
        #if it is, render the appropriate JSON
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
            token = encode_token({ user_id: @user.id })
            render json: { user: UserSerializer.new(@user), token: token}
        else
            render json: { message: 'Invalid email or password' }
        end
    end 

    private

    def user_params 
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end 

end
