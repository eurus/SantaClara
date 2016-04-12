# SantaClara

Framework based on Cuba

[TOC]

## Get Start

Fork the project, change the application name and config your git settings.`git remote add origin YOUR_SSH_ADDRESS`, now you have a fresh copy of this framework

## Connecting to a database

This project use mysql2 adapter for connecting a database, together with sequel as the ORM, edit `config/database.rb` to your database settings.    

## Add a model

Like rails, you just need to create a model in models directory. For example, create a file named `test.rb`,then edit the file:

```ruby
class Test < Sequel::Model
end
```

Above code shows how to add a model.

## Migration

you can create a migration file in `db/migrations` folder, an example might look like:  

```ruby
Sequel.migration do
  change do
    create_table(:tests) do
      primary_key :id
      String :title, :null=>false
      text :content
      DateTime :created_at
      DateTime :updated_at
    end
  end
end
```

after that, you just simply run `rake db:migration`, now you have a table named tests in your database, you should always check sequel for more details.     
Here are some avaliable tasks for migration:

```bash
rake db:version # check the db version
rake db:migrate # perform migration up to the latest
rake db:rollback # roll back the migration
rake db:reset # reset the whole database
```


