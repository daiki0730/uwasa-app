## usersテーブル

|カラム名|カラムの型|オプション|
|------|----|-------|
|nickname|string|mull: false|
|email|text|null: false|
|telephone|string|null: false|
|address|string|null: false|
|password|string|null: false|
|icon_picture|text|null: false|

### アソシエーション
- has_many : tweets
- has_many : comments

## tweetsテーブル

|カラム名|カラムの型|オプション|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|title|string|null: false|
|image_url|text|null: false|
|country|string|null: false|
|detail|text|null: false|

### アソシエーション
- belongs_to : users
- has_many : comments


## commetnsテーブル

|カラム名|カラムの型|オプション|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|tweets_id|references|null: false, foreign_key: true|
|text|text|null: false|

### アソシエーション
- belongs_to : users
- belongs_to : tweets
