class CreateConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :concerts do |t|
      t.string :location
      t.date :concert_date
      t.string :concert_name
      t.string :venue_name

      t.timestamps
    end
  end
end
