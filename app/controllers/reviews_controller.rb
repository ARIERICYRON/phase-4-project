class ReviewsController < ApplicationController
    def index
        reviews = Review.all
        render json: reviews, Serializer: ReviewSerializer
    end

    def show 
        review = Review.find_by(id: params[:id])
        if review
            render json: review
        else
            render json: { error: "Review not found"}, status: :not_found
        end
    end
    def create
        review = Review.create(
            review_content: params[:review_content]
        )
        render json: review, status: :created
    end
end
