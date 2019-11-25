class AddCategoryToTrails < ActiveRecord::Migration[6.0]
  def change
    add_column :trails, :category, :string
  end
end
