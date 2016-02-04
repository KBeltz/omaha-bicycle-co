class CreatePedalHappies < ActiveRecord::Migration
  def change
    create_table :pedal_happies do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
