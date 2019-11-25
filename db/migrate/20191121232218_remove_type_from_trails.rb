class RemoveTypeFromTrails < ActiveRecord::Migration[6.0]
  def change

    remove_column :trails, :type, :string
  end
end
