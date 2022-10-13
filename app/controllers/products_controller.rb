class ProductsController < ApplicationController
    def index
        products = Product.all
        render json: products, Serializer: ProductSerializer
    end

    def show
        product = Product.find_by(id: params[:id])
        if product
            render json: product
        else
            render json: { error: "Bird not found"}, status: :not_found
        end
    end

    def create
        product = Product.create(
            title: params[:title],
            description: params[:description],
            image_url: params[:image_url],
            price: params[:price]
            )
        render json: product, status: :created
    end
end
