# encoding: utf-8
namespace :create_data do
  desc 'create f_menu data in environment'
  task :menu_data => :environment do 
    puts "Creating  datas success,checkout your home page!"
    FMenu.delete_all
    CMenu.delete_all
    FMenu.create([{ 
        :name => "主页",
        :url => "home_menu"
    },{ 
        :name => "添加第一级菜单",
        :url => "f_menu_win"
    },{ 
        :name => "添加第二级菜单",
        :url => "s_menu_win"
    },{
        :name => "添加第三级菜单",
        :url => "t_menu_win"
    },{ 
        :name => "菜单设置",
        :url => "c_menu_win"
    }])
  CMenu.create
  end
end
