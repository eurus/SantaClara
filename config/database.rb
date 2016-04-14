# This will connect to the database
require 'yaml'
config = YAML.load_file('./config/database.yml')
DB_ENV = ENV['ST_ENV'] || 'development'
puts "Loading #{DB_ENV} database"
DB = Sequel.connect(config[DB_ENV]) 

