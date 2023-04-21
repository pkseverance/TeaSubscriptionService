class Api::V1::CustomerSubscriptionsController < ApplicationController
  def create
    customer = Customer.find(params[:customer_id])
    customer_subscription = customer.customer_subscriptions.create!(subscription_id: params[:subscription_id], status: true)
    render json: CustomerSubscriptionSerializer.new(customer_subscription), status: 201
  end

  def update
    customer_subscription = CustomerSubscription.find(params[:id])
    customer_subscription.update(status: params[:status])
    render json: CustomerSubscriptionSerializer.new(customer_subscription)
  end
end