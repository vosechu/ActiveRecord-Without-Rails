require 'bundler/setup'
require 'active_record'

# require all the models
$:.unshift File.expand_path('.')
$:.unshift File.expand_path('./lib')
$:.unshift File.expand_path('./spec')
Dir.glob("models/*") { |file| require file }

# open a connection to the db
require 'lib/connection'
Connection.connect