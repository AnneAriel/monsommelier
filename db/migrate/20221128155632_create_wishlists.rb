class CreateWishlists < ActiveRecord::Migration[7.0]
  def change
    create_table :wishlists do |t|
      t.references :wine, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :cave_presence
      t.integer :stock

      t.timestamps
    end
  end
end
