DB = Sequel.connect(:adapter => 'mysql2',
                    :user => 'username',
                    :password => "password",
                    :host => "localhost" ,
                    :database => "awesome")
