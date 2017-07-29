class ManageController < ApplicationController
  def menu
    session[:business_id] = 1
  end

  def category
    session[:business_id] = 1
    @category = Menu.all
  end

  def item
    session[:business_id] = 1
  end
end
