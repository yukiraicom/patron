README

* Ruby version
2.5.1

# patron

## Database

### users table
|Culumn|Type|Oprion|
|------|----|------|
|username|string|null: false|
|profileImage|string|
|headerProfileImage|string|
|profile|string|

has_many post table

has_many support table

### support table
|Culumn|Type|Options|
|------|----|-------|
|patreon_id|integer|null: false|
|creater_id|integer|null: false|
|SupportMoney|integer|


### supportPost table
|Culumn|Type|Oprion|
|------|----|------|
|title|string|
|text|string|
|SupportMoney|integer|
|creater_id|string|


### post table
|Culumn|Type|Oprion|
|------|----|------|
|text|string|
|image|string|
|creater_id|integer|


### sns table
|Culumn|Type|Oprion|
|------|----|------|
|twitter|string|
|homepage|string|
|patron_id|string|
|creater_id|string|


