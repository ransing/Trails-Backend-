class AddDetailToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :detail, :string
  end
end
