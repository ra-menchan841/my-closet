# README

# アプリ概要
所持している服を画像で管理するアプリ

# 機能一覧
・ユーザー管理機能
・登録機能
・削除機能
・一覧表示機能
・カテゴリー別の登録数表示機能
・詳細表示機能

# 技術一覧


# DB設計

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|category_id|integer|null: false, foreign_key: true|
|color_id|integer|null: false, foreign_key: true|
|season_id|integer|null: false, foreign_key: true|

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