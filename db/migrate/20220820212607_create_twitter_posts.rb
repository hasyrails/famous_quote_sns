class CreateTwitterPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :twitter_posts do |t|
      t.text :content
      t.string :picture
      t.string :kind

      t.timestamps
    end
  end
end
