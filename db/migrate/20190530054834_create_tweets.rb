class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string      :title,     null: false
      t.text        :image_url, null: false
      t.string      :country,   null: false
      t.text        :detail,    null: false
      t.timestamps
    end
  end
end
