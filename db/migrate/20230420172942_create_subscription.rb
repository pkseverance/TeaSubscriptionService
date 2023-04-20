class CreateSubscription < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.string :title
      t.float :price
      t.boolean :status
      t.string :frequency
      t.references :customer, foreign_key: true
      t.timestamps
    end
  end
end
