class RemoveTypeFromBrands < ActiveRecord::Migration
  def change
    remove_column :brands, :type
    add_column :brands, :category, :string
  end
end
