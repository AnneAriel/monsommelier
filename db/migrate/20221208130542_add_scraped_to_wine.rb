class AddScrapedToWine < ActiveRecord::Migration[7.0]
  def change
    add_column :wines, :scraped, :boolean, default: false
  end
end
