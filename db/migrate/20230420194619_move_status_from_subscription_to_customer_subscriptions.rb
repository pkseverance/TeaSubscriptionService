class MoveStatusFromSubscriptionToCustomerSubscriptions < ActiveRecord::Migration[6.0]
  def change
    change_table :subscriptions do |t|
      t.remove :status
    end

    change_table :customer_subscriptions do |t|
      t.boolean :status
    end
  end
end
