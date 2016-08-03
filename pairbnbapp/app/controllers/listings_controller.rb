class ListingsController < ApplicationController
	def index
		@listings = Listing.all
	end

	def new
		@listing = Listing.new
	end

	def create
		@listing = current_user.listings.new(listing_params)
		if @listing.save
		redirect_to listings_path
		end
	end

	def listing_params #for security purposes
		params.require(:listing).permit(:title, :address, :contact_email, :country_code)
	end

	def edit
		@listing = Listing.find(params[:id])
	end

	def update
		@listing = Listing.find(params[:id])
		@listing.update(listing_params)
		redirect_to listings_path(@listings)
	end

	def destroy
		@listing = Listing.find(params[:id])
		@listing.destroy	
		redirect_to listings_path
	end

	def show
		@listing = Listing.find(params[:id])
	end

end
