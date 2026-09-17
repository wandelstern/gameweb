class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :title
      t.string :genre
      t.integer :playtime
      t.string :image
      t.text :game_detail
      t.integer :user_id

      t.timestamps
    end
  end
end