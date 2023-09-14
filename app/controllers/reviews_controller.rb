class ReviewsController < ApplicationController
    def new
        # In order to create an instance of a review, we need to
        # associate it with a restaurant.
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @restaurant = Restaurant.find(params[:restaurant_id])
        @review.restaurant = @restaurant
        if @review.save
            redirect_to restaurant_path(@restaurant)
        else
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @restaurant = Restaurant.find(params[:id])
        @reviews = @restaurant.reviews # Fetch all reviews associated with this restaurant
      end
    

    private

        def review_params
            params.require(:review).permit(:rating, :content)
        end
    
end
