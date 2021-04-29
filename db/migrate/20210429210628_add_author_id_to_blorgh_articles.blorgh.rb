# This migration comes from blorgh (originally 20210429210057)
class AddAuthorIdToBlorghArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :blorgh_articles, :author_id, :integer
  end
end
