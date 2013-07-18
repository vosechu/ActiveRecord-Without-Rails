require 'active_record'

require './lib/connection'
require './models/page'

Connection.connect

if __FILE__ == $0
  puts "Count of Pages: #{Page.count}"
end
