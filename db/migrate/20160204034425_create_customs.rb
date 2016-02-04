class CreateCustoms < ActiveRecord::Migration
  def change
    create_table :customs do |t|
      t.string :image
      t.string :caption

      t.timestamps null: false
    end
  end
end
