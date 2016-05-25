class PaymentsController < ApplicationController

  def create
    @product = params[:product_id]
    @user = current_user
    token = params[:stripeToken]
    # Create the charge on Stripe's servers -this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => number_with_precision(@product.price, precision: 2, separator: "").to_i, #Amount in cents
        :currency => "usd",
        :source => token,
        :description => params[:stripeEmail]
      )

      if charge.paid
        new_order = Order.new(:user_id => @user.id, :product_id => @product.id, :total => (@product.price).to_f)
        new_order.save
        if new_order.save!
          @order = new_order.id
          PaymentMailer.create_order_thank_you(@user.email, @user.name, @product.name, @order, (@product.price).to_s).deliver_now
        end
      end
    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end
    redirect_to product_path(@product), notice: 'Thank you for your purchase!'
  end

end