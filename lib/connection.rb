class Connection
  def self.connection_details
    return {
      :host => "localhost",
      :adapter => "postgresql",
      :database => "ar-no-rails",
      :username => "db_connect",
      :encoding => "utf8",
      :pool => 5
    }
  end

  def self.admin_connection_details
    return connection_details.merge({
      :database => 'postgres',
      :schema_search_path => 'public'
    })
  end

  def self.connect(options={})
    if options[:admin]
      ActiveRecord::Base.establish_connection(admin_connection_details)
    else
      ActiveRecord::Base.establish_connection(connection_details)
    end
  end
end