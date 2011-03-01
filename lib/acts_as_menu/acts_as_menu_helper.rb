module ActsAsMenu
  def acts_as_menu
    #Comment: Mouse
    #Action: menu config initialize
    #菜单初始化
    #TODO 根据不同的用户可以有自己的配置
    c_menu = CMenu.first
    @c_menu =  "<script type='text/javascript'>
        $(document).ready(function(){ 
          $('ul.sf-menu').superfish({ 
            delay:  #{ c_menu.delay },               
            speed:  '#{ c_menu.speed }',
            animation:  {#{ c_menu.animation}:'show'},  
          }); 
        }); 
		 </script>"
  #Comment:Mouse
  #Action: create a menu
  #获取f_menu 第一次菜单
  f_menu = FMenu.all
  @menu = "<ul class='sf-menu'>"
  f_menu.each do |f|  
    @menu += "<li class='current'><a href='#{f.url}'>#{ f.name }</a>"
    @menu += "<ul>" unless f.s_menus.blank?
      f.s_menus.each do |s|
        @menu +="<li> <a href=#{ s.url }>#{ s.name }</a> "
        @menu += "<ul>" unless s.t_menus.blank?
        s.t_menus.each do |t|
          @menu +="<li> <a href=#{ t.url }>#{ t.name }</a></li>"
        end
        @menu += "</li>"
        @menu += "</ul>" unless s.t_menus.blank?
      end
    @menu += "</ul>" unless f.s_menus.blank?
    @menu +="</li>"
  end
  @menu += "</ul>"
  @acts_as_menu = ( @c_menu + @menu).html_safe
  end
end
