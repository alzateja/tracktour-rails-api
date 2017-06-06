class CreateAttendedConcerts < ActiveRecord::Migration[5.0]
  def change
    create_table :attended_concerts do |t|
      t.references :wishlist, foreign_key: true
      t.references :concert, foreign_key: true
      t.string :concert_attendance_status

      t.timestamps
    end
  end
end
