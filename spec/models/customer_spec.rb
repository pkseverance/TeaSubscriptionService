require 'rails_helper'

RSpec.describe Customer do
  describe 'relationships' do
    it { should have_many(:customer_subscriptions) }
    it { should have_many(:subscriptions).through(:customer_subscriptions) }
  end
end
