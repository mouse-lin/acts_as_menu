class CreateTMenus < ActiveRecord::Migration
  def self.up
    create_table :t_menus do |t|
      t.string :name
      t.string :url
      t.integer :s_menu_id

      t.timestamps
    end
  end

  def self.down
    drop_table :t_menus
  end
end
