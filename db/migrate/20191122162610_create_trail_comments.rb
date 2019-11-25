class CreateTrailComments < ActiveRecord::Migration[6.0]
  def change
    create_table :trail_comments do |t|
      t.string :details
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :trail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
