class ChangeColumnsWine < ActiveRecord::Migration[7.0]
  def change
    rename_column(:wines, :domaine, :nom)
  end
end
