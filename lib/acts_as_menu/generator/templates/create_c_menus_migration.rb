# encoding: utf-8
class CreateCMenus < ActiveRecord::Migration
  def self.up
    create_table :c_menus do |t|
      t.string  :speed, :default => "normal"
      t.string  :delay, :default => "800"
      t.string  :animation, :default => "height"
      t.string  :dropShadows, :default => "true"
      #可供选择是否需要user_id,用来定制不同用户个性化配置
      #t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :c_menus
  end
end
