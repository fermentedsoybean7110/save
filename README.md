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

## Incomes Table
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|year|integer|null: false|
|month|integer|null: false|
|genre_id|integer|null: false, foreign_key: true|
|name|string|
|amount|integer|null: false|


### Asociation
- belongs to user
- belongs to income_genre

## Income_genre Table
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|

### Asociation
- has many incomes

## expense
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|year|integer|null: false|
|month|integer|null: false|
|day|integer|null: false|
|genre_id|integer|null: false, foreign_key: true|
|name|string|
|amount|integer|null :false|

### Asociation
- belongs to user
- belongs to expense_genre

## Expense_genre Table
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|name|string|null: false|

### Asociation
- has many expenses
