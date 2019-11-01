class ListingsController < ApplicationController
  
    # before_action :authenticate_user!
    before_action :set_listing, only: [ :show ]
    before_action :set_user_listing, only: [ :edit, :update, :destroy ]

    def index_buyer
      @listings = Listing.all
    end

    def index_seller
      @listings = current_user.listings
    end
  
    def new
      @listing = Listing.new
    end
  
    def update
      if @listing.update(listing_params)
        redirect_to @listing
      else
        render :edit
      end

    end
  
    def edit
    end
  
    def create
      @listing = current_user.listings.create(listing_params)
        if @listing.save
          redirect_to listings_path
        else
          render :new
      end
  
    end
  
    def destroy
      @listing.destroy
      redirect_to listings_path
    end

    def show
      @question = Question.new
      # @question.listing_id = @listing.id
    end

    private

    def set_listing
      id = params[:id]
      @listing = Listing.find(id)
    end
  
    def set_user_listing
      id = params[:id]
      @listing = current_user.listings.find_by_id(id)
  
      if @listing == nil
        redirect_to listings_path
      end
      
    end

    def listing_params
      listing_params = params.require(:listing).permit(:user_id, :type_id, :mineral_name, :description, :location, :price, :picture)
    end
  

end