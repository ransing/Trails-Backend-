class CreateCurrentUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :current_users do |t|
      t.integer :current_user

      t.timestamps
    end
  end
end
