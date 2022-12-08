class AddScrapedToMatches < ActiveRecord::Migration[7.0]
  def change
    add_column :matches, :scraped, :boolean, default: false
  end
end

