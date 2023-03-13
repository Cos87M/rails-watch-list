class ChangeColumnInBookmarks < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookmarks, :movie_id
    remove_column :bookmarks, :list_id
    add_reference :bookmarks, :movies, index: true, foreign_key: true
    add_reference :bookmarks, :lists, index: true, foreign_key: true
  end
end
