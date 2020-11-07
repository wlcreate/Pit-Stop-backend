class CreateReflections < ActiveRecord::Migration[6.0]
  def change
    create_table :reflections do |t|
      t.date :date_visited
      t.integer :rating
      t.string :content
      t.string :media
      t.belongs_to :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
