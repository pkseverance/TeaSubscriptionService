require 'rails_helper'

RSpec.describe CustomerSubscription do
  describe 'relationships' do
    it {should belong_to(:customer) }
    it {should belong_to(:subscription) }
  end
end