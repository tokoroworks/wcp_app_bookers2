class RenameOpinionIdColumnToFavorites < ActiveRecord::Migration[5.2]
  def change
    rename_column :favorites, :opinion_id, :book_id
  end
end
