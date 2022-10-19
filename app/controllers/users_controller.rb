class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, Serializer: UserSerializer
    end

    def create
        users = User.create(
            username: params[:username],
            email: params[:email],
            password: params[:password],
            )
        render json: product, status: :created
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else
            render json: { error: "User not found" }, status: :not_found
        end
    end

  
end
