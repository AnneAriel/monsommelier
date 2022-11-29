class AddColumnsToWine < ActiveRecord::Migration[7.0]
  def change
    add_column :wines, :nom_commercial, :string
    add_column :wines, :provenance, :string
    add_column :wines, :cépage, :string
  end
end
