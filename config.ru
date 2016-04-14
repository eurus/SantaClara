# require cuba as the base
require "cuba"
require 'rack/cors'
# require the sequel
require 'mysql2'
require 'sequel'

Sequel::Model.plugin :timestamps

require "./config/database"
# require the models of the application
Dir.glob("./app/models/*") { |file| require file }

# require the cuba plugin
Dir.glob("./plugin/*") { |file| require file }

# require the sever file to hold requests
require "./app/api/zero"

run Cuba
