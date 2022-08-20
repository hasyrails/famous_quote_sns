class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text :text
      t.integer :user_id, foreign_key: true, null: false

      t.timestamps
    end
  end
end
