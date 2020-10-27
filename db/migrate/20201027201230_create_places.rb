class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :area
      t.string :country
      t.boolean :revisit
      t.belongs_to :category, null: false, foreign_key: true
      t.belongs_to :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
