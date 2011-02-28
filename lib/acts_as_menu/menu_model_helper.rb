module ActsAsMenu
  class << ActiveRecord::Base
    def hello_name name = nil
      "#{ name } this is my first plugins"
    end
  end
end
