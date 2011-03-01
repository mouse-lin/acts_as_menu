# encoding: utf-8
namespace :acts_as_menu do
  desc 'create f_menu data in environment'
  task :create_datas => :environment do 
    puts "Creating  datas success,checkout your home page!"
    FMenu.delete_all
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
  end
end
