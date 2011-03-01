class ActsAsMenusController < ApplicationController
  def home_menu
    @acts_as_menu = acts_as_menu
  end

  def f_menu_win
    @f_menu_datas = FMenu.all
  end

  def f_menu_create
    f_menu = FMenu.new(params[:f_menu])
    f_menu.save
    redirect_to  :action => "f_menu_win"
  end

  def update_f_menu_win
    @f_menu = FMenu.find(params[:id])
  end

  def update_f_menu
    FMenu.find(params[:id]).update_attributes(params[:f_menu])
    redirect_to  :action => "f_menu_win"
  end

  def s_menu_win
    @f_menu = FMenu.all.collect{ |f| [f.name,f.id] }
    @s_menu_datas = SMenu.all
  end

  def s_menu_create
    s_menu = SMenu.new(params[:s_menu])
    s_menu.save
    redirect_to  :action => "s_menu_win"
  end

  def update_s_menu_win
    @s_menu = SMenu.find(params[:id])
    @f_menu = FMenu.all.collect{ |f| [f.name,f.id] }
  end

  def update_s_menu
    SMenu.find(params[:id]).update_attributes(params[:s_menu])
    redirect_to  :action => "s_menu_win"
  end


  def t_menu_win
    @s_menu = SMenu.all.collect{ |s| [s.name,s.id] }
    @t_menu_datas = TMenu.all
  end

  def t_menu_create
    t_menu = TMenu.new(params[:t_menu])
    t_menu.save
    redirect_to  :action => "t_menu_win"
  end

  def update_t_menu_win
    @s_menu = SMenu.all.collect{ |s| [s.name,s.id] }
    @t_menu = TMenu.find(params[:id])
  end

  def update_t_menu
    TMenu.find(params[:id]).update_attributes(params[:t_menu])
    redirect_to  :action => "t_menu_win"
  end

  
  def c_menu_win
    @c_menu = CMenu.first
  end

  def c_menu_update
    CMenu.first.update_attributes!(params[:c_menu])
    redirect_to  :action => "c_menu_win"
  end

end
