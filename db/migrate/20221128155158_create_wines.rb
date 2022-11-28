class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :domaine
      t.string :appellation
      t.integer :annee
      t.string :couleur
      t.string :code_barre

      t.timestamps
    end
  end
end
