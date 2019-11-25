class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.time :time
      t.belongs_to :trail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
