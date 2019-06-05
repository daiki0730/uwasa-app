class RemoveImageUrlFromTweets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tweets, :image_url, :text
  end
end
