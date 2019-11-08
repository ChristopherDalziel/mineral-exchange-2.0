class PaymentsController < ApplicationController

  before_action :authenticate_user!

  def webhook
    payment_id = paramas[:data][:object][:payyment_intent]
    payment = Stripe::PaymentIntent.retrieve( payment_id )

    status 200

  end

  # Enum changes to 'yes' upon successful payment - this removes the listing from been visible to "buyers", however the listed "seller" can still see in their private listings page.
  def success
    @listing = Listing.find(params[:listingId])
    @user = User.find(params[:userId])

    enum_change = Listing.find(params[:listingId])
    enum_change.update(sold: 'yes')
    enum_change.save
  end  
  
end