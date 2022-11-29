class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.text :caracteristique
      t.string :nom

      t.timestamps
    end
  end
end
