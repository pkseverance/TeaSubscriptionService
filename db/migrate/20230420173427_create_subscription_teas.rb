class CreateSubscriptionTeas < ActiveRecord::Migration[6.0]
  def change
    create_table :subscription_teas do |t|
      t.references :tea, foreign_key: true
      t.references :subscription, foreign_key: true
    end
  end
end
