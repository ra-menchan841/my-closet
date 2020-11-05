# README

## アプリケーション名
Cassettiera

## アプリケーション概要
所持している服を画像で管理するアプリケーションです。

## 本番環境
URL：https://my-cassettiera.herokuapp.com/  
テスト用メールアドレス：signup@test.com  
テスト用パスワード：testpass01  

## 制作背景

### 所持している服を出先でも把握したい

服が好きでたくさん所持していますが、どんな服をどのくらい持っているのかを把握できておらず、似たような服を買ってしまいがちでした。そこで、所持している服を登録しておき出先でも確認できるようにすると、買い物もしやすくなると思い作成致しました。  


## 機能一覧・DEMO


### 登録機能
左側のregisterボタンを押下すると、画面遷移し服を登録できます。  
登録内容は画像・カテゴリ・カラー・シーズンです。  

[![Image from Gyazo](https://i.gyazo.com/338df95f31ce96135d3739973bd88d71.gif)](https://gyazo.com/338df95f31ce96135d3739973bd88d71)


### カテゴリー別の登録表示機能
登録した服は、左側のカテゴリ欄に数量が表示されます。  
また、カテゴリ名を押下するとそのカテゴリに登録されている服の一覧が右側に表示されます。

### 一覧表示機能
登録した服の画像一覧が確認できます。  
登録後の画面、または左上のアプリ名を押下すると表示されます。

### 詳細表示機能
登録した服の画像を押下すると、その服の詳細を確認できます。

### 削除機能
詳細表示ページ内のdeleteボタンを押下すると、登録した服の削除ができます。

[![Image from Gyazo](https://i.gyazo.com/ea122f0e6cf8985161325a8da9214fa4.gif)](https://gyazo.com/ea122f0e6cf8985161325a8da9214fa4)


## 工夫した点
直感的に使用できるように意識して作成致しました。  
また、カテゴリー別に数量を表示させ、登録した服の全体像を把握しやすく致しました。

## 使用技術
言語：Ruby  
フレームワーク：Ruby on Rails  
Gem：haml-rails, erb2haml, carrierwave, mini_magick, devise, fog-aws, dotenv-rails  
DB：MySQL  
サーバー：Heroku  
画像ストレージ：S3(AWS)


## 今後実装したい機能・改善点
- 編集・更新機能の追加
- レスポンシブデザインへの対応
- カラー・シーズンごとの表示機能の追加
- 登録ページのビュー調整


# DB設計

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|category_id|integer|null: false, foreign_key: true|
|color_id|integer|null: false, foreign_key: true|
|season_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to: user
- belongs_to: category
- belongs_to: color
- belongs_to: season

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|
|password confirmation|string|null: false|

### Association
- has_many: itmes

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many: itmes

## colorsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many: itmes

## seasonsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many: itmes