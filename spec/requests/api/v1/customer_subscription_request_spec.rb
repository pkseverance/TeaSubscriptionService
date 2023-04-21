require 'rails_helper'

RSpec.describe 'Customer Subscription Request' do
  describe 'POST Customer Subscription' do
    it 'creates a customer subscription object given a customer and subscription' do
      customer = Customer.create!(first_name: 'John', last_name: 'Smith', email: 'johnsmith@example.com', address: '1234 Smith Dr.')
      subscription = Subscription.create!(title: 'Jade Dragon Experience', price: 19.99, frequency: 'monthly')

      headers = {'CONTENT_TYPE' => 'application/json'}
      params = {
        customer_id: customer.id,
        subscription_id: subscription.id
      }

      post '/api/v1/customer_subscriptions', headers: headers, params: JSON.generate(params)
      expect(response).to(be_successful)

      response_data = JSON.parse(response.body, symbolize_names: true)

      expect(response_data[:data][:type]).to eq('customer_subscription')
      expect(response_data[:data][:attributes][:customer_id]).to eq(customer.id)
      expect(response_data[:data][:attributes][:subscription_id]).to eq(subscription.id)
      expect(response_data[:data][:attributes][:status]).to eq(true)

    end
  end

  describe 'PATCH Customer Subscription' do
    it "updates a customer subscription object's status" do
      customer = Customer.create!(first_name: 'John', last_name: 'Smith', email: 'johnsmith@example.com', address: '1234 Smith Dr.')
      subscription = Subscription.create!(title: 'Jade Dragon Experience', price: 19.99, frequency: 'monthly')
      customer_subscription = customer.customer_subscriptions.create!(subscription_id: subscription.id)

      headers = {'CONTENT_TYPE' => 'application/json'}
      params = {
        status: false
      }

      patch "/api/v1/customer_subscriptions/#{customer_subscription.id}", headers: headers, params: JSON.generate(params)
      expect(response).to(be_successful)

      response_data = JSON.parse(response.body, symbolize_names: true)

      expect(response_data[:data][:type]).to eq('customer_subscription')
      expect(response_data[:data][:attributes][:customer_id]).to eq(customer.id)
      expect(response_data[:data][:attributes][:subscription_id]).to eq(subscription.id)
      expect(response_data[:data][:attributes][:status]).to eq(false)
    end
  end
end