# README

##  usersテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| password           | string | null: false |
| name               | string | null: false |
| profile            | text   | null: false |
| occupation         | text   | null: false |
| position           | text   | null: false |

 ### Association 
 - has_many : prototype
 - has_many : comments

## prototypes テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title      | string           | null: false |
| catch_copy | text          | null: false |
| concept    | references    | null: false |
| image      | ActiveStorage |
| user       | reference     |

### Association
- belongs to: prototypes
- belongs to: comments

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text     |                                |
| user    | references |  |
| prototype    | references |  |