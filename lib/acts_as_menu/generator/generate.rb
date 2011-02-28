require 'rails/generators'

class ActsAsMenuGenerate < Rails::Generators::Base
  include Rails::Generators::Migration
    def self.source_root
      @source_root ||= File.join(File.dirname(__FILE__), 'templates')
    end

    #create menu model
    def create_menu_model_file
       template 'model.rb', 'app/models/user.rb'
    end

    def self.next_migration_number(dirname)
       if ActiveRecord::Base.timestamped_migrations
         Time.now.utc.strftime("%Y%m%d%H%M%S")
       else
         "%.3d" % (current_migration_number(dirname) + 1)
       end
     end

    def create_menu_migration_file
       migration_template 'migration.rb', 'db/migrate/create_user_table.rb'
    end

end
