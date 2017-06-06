class CreateWishlists < ActiveRecord::Migration[5.0]
  def change
    create_table :wishlists do |t|
      t.string :wish_status
      t.references :user, foreign_key: true
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
