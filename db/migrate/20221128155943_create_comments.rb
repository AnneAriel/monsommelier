class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :commentaire
      t.integer :note
      t.references :user, null: false, foreign_key: true
      t.integer :commented_on_id
      t.string :commented_on_type

      t.timestamps
    end
  end
end
