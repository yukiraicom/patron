 README

* Ruby version
2.5.1

* Rails version
5.2.1

# patron

## Database

### patrons table
|Culumn|Type|Options|
|------|----|-------|
|username|string|null: false|

### support table
|Culumn|Type|Options|
|------|----|-------|
|patreon_id|integer|null: false|
|creater_id|integer|null: false|
|SupportMoney|integer|


### creaters table
|Culumn|Type|Oprion|
|------|----|------|
|username|string|null: false|
|profileImage|string|
|headerProfileImage|string|
|profile|string|

### supportPost table
|Culumn|Type|Oprion|
|------|----|------|
|title|string|
|text|string|
|SupportMoney|integer|


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


