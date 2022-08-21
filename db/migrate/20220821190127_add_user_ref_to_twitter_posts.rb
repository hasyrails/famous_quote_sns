class AddUserRefToTwitterPosts < ActiveRecord::Migration[5.2]
  def change
    add_reference :twitter_posts, :user, foreign_key: true
  end
end
