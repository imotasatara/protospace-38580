#テーブル設計

## users_table

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| email              | string | null: false |
| encrypted_password | string | null: false |
| name               | string | null: false |
| profile            | text   | null: false |
| occupation         | text   | null: false |
| position           | text   | null: false |

### Association

- has_many :comments
- has_many :prototypes


## comments_talbe

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| content   | text       | null: false, foreign_key: true |
| prototype | references | null: false, foreign_key: true |
| user      | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :prototype


## prototypes_table

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| catch_copy | text       | null: false                    |
| concept    | text       | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association

- has_many :comments
- belongs_to :user