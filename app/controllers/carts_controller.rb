class CartsController < ApplicationController
    def index 
        carts = Cart.all
        render json: carts, Serializer: CartSerializer
    end

    def create
        cart = Cart.create(
            title: params[:title],
            description: params[:description],
            image_url: params[:image_url],
            price: params[:price]
        )
        render json: cart, status: :created
    end

    def show
        cart = Cart.find_by(id: params[:id])
        if cart
            render json: product
        else
            render json: { error: "product not found"}, status: :not_found
        end
    end

    def destroy
        cart = cart.find_by(id: params[:id])
        if cart
            bird.destroy
            head :no_content
        else
            render json: [ error: "cart not found" ,], status: :not_found
        end
    end
end
