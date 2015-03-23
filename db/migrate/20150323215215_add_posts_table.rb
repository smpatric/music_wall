class AddPostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :song_title
      t.string :author
      t.string :link
      t.timestamps
    end
  end
end