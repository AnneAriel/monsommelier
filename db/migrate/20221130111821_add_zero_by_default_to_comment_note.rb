class AddZeroByDefaultToCommentNote < ActiveRecord::Migration[7.0]
  def change
    change_column :comments, :note, :integer, null: false, default: 0
  end
end
