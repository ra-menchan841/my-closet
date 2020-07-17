# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# アプリ概要

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