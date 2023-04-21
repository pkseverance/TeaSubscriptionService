require 'rails_helper'

RSpec.describe 'Subscription Request' do
  describe "GET Customer's Subscriptions" do
    it "returns a list of a given customer's subscriptions" do
      customer = Customer.create!(first_name: 'John', last_name: 'Smith', email: 'johnsmith@example.com', address: '1234 Smith Dr.')
      subscription = Subscription.create!(title: 'Jade Dragon Experience', price: 19.99, frequency: 'monthly')
      customer_subscription = CustomerSubscription.create!(customer_id: customer.id, subscription_id: subscription.id)

      get "/api/v1/customers/#{customer.id}/subscriptions"
      expect(response).to(be_successful)

      response_data = JSON.parse(response.body, symbolize_names: true)

      response_data[:data].each do |response|
        expect(response[:type]).to eq('subscription')
        expect(response[:attributes][:title]).to be_a(String)
        expect(response[:attributes][:price]).to be_a(Float)
        expect(response[:attributes][:frequency]).to be_a(String)
      end
    end
  end
end