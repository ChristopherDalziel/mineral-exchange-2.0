class ListingsController < ApplicationController

    def index
      @listings = Listing.all
    end
  
    def new
      @listing = Listing.new
    end
  
    def update
      @listing.update(listing_params)
      redirect_to @listing
    end
  
    def edit
    end
  
    def create
      listing_params = params.require(:listing).permit(:user_id, :type_id, :mineral_name, :description, :location, :price, :image)

      # Listing user:references type:references mineral_name:string description:text location:text price:integer image:text sold:integer
  
      # @listing = current_user.listings.create(listing_params)
      # @listing.traits << Trait.find(params[:listing][:trait_id])
      @listing.save
  
      if @listing.save 
        redirect_to @listing
      else
        render :new
      end
  
    end
  
    def destroy
      @listing.destroy
      redirect_to listings_path
    end
  
    def listing_params
      listing_params = params.require(:listing).permit(:user_id, :type_id, :mineral_name, :description, :location, :price, :image)
    end

end