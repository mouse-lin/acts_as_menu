require 'rails/generators'

class ActsAsMenuModel < Rails::Generators::Base
  def self.source_root
    @source_root ||= File.join(File.dirname(__FILE__), 'templates')
  end

  def create_model_file
     template 'model.rb', 'app/models/user.rb'
     template 'people.rb', 'app/models/people.rb'
  end

end
