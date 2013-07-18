$:.unshift File.expand_path('.')
require 'lib/boot'

namespace :db do

  task :connect do
    Connection.connect
  end

  task :connect_admin do
    Connection.connect(admin: true)
  end

  desc "Migrate the db"
  task :migrate => :connect do
    ActiveRecord::Migrator.migrate("db/migrate/")
  end

  desc "Create the db"
  task :create => :connect_admin do
    ActiveRecord::Base.connection.create_database('ar-no-rails')
  end

  desc "drop the db"
  task :drop => :connect_admin do
    ActiveRecord::Base.connection.drop_database('ar-no-rails')
  end

end