class PaymentsController < ApplicationController

  before_action :authenticate_user!

  def webhook
    payment_id = paramas[:data][:object][:payyment_intent]
    payment = Stripe::PaymentIntent.retrieve( payment_id )

    # listing_id = payment.metadata.listing_id
    # user_id = payment.metadata.user_id

    # p "listing id = " + listing_id
    # p "user id = " + user_id

    status 200

  end

  
end