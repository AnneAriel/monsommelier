class AddColumnQuantiteToWine < ActiveRecord::Migration[7.0]
  def change
    add_column :wines, :quantité, :integer
  end
end
