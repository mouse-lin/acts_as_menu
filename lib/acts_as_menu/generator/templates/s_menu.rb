class SMenu < ActiveRecord::Base
  has_many :t_menus
  belongs_to :f_menu
  # you can use NestedAssignment for help
  #include NestedAssignment
  #accessible_associations :t_menus
end
