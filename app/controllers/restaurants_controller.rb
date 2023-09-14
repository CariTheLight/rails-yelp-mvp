class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end

    def show
        @restaurant = Restaurant.find(params[:id])
    end

    # creates an empty instance for a new resto to be created
    def new
        @restaurant = Restaurant.new 

    end

    # restaurant_params are all the attributes we created the restaurant model with and their validations
    def create
        @restaurant = Restaurant.new(restaurant_params)

        if @restaurant.save
            redirect_to @restaurant, notice: "Restaurant was succesfully created"
        else
            render :new, status: :unprocessable_entity
        end
    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name, :address, :phone_number, :category)
      end
    
end
