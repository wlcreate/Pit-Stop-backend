class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
