class CreateCoffeeAndTeas < ActiveRecord::Migration
  def change
    create_table :coffee_and_teas do |t|
      t.string :brand
      t.string :description
      t.string :image

      t.timestamps null: false
    end
  end
end
