class CreateSMenus < ActiveRecord::Migration
  def self.up
    create_table :s_menus do |t|
      t.string :name
      t.string :url
      t.integer :f_menu_id


      t.timestamps
    end
  end

  def self.down
    drop_table :s_menus
  end
end
