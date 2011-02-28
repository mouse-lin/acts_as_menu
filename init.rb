# Include hook code here
require 'acts_as_menu'

ActionController::Base.send :include, ActsAsMenu
ActiveRecord::Base.send :include, ActsAsMenu
