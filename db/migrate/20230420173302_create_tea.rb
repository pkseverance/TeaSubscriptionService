class CreateTea < ActiveRecord::Migration[6.0]
  def change
    create_table :teas do |t|
      t.string :title
      t.string :description
      t.float :temperature
      t.integer :brew_time
      t.timestamps
    end
  end
end
