class AddTimestampsToSubscriptionTeas < ActiveRecord::Migration[6.0]
  def change
    change_table :subscription_teas do |t|
      t.timestamps
    end
  end
end
