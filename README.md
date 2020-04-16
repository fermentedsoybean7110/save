# README

## Users Table
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|

### Asociation
- has many :incomes
- has many :expenses
- has many :events 

## Incomes Table
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|date|date|null: false|
|genre_id|integer|null: false, foreign_key: true|
|name|string|
|amount|integer|null: false|


### Asociation
- belongs to user
- belogs to event

## expense
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|date|date|null: false|
|genre_id|integer|null: false, foreign_key: true|
|name|string|
|amount|integer|null :false|

### Asociation
- belongs to user
- belongs to events

## event
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|date|date|null: false|
|genre_id|integer|null: false, foreign_key: true|
|name|string|
|amount|integer|null :false|

### Asociation
- belongs to user
- has many genres through event_genre
- belongs to income
- belongs to expense

## Genre Table
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|

### Asociation
- has many events through event_genre

## event_genre
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|event_id|integer|null: false, foreign_key: true|
|genre_id|integer|null: false, foreign_key: true|

### Asociation
- belongs to event
- belongs to genre