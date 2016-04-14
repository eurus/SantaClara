# This will connect to the database
require 'yaml'

config = YAML.load_file('./config/database.yml')

DB = Sequel.connect(config["#{ENV['ST_ENV']}"])

