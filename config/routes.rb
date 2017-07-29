Rails.application.routes.draw do

  get 'manage/menu'

  get 'manage/category'

  get 'manage/item'

  # get 'user/index'

  # get 'user/login'

  # get 'user/logout'

  # get 'user/dashboard'

  match "/404", :to => "errors#not_found", :via => :all
  match "/500", :to => "errors#internal_server_error", :via => :all

  root :to => "manage#menu"

  #Menu Api Routing
  get '/menu/index', to: 'menus#index', as: 'menu_index'
  delete '/menu/destroy', to: 'menus#destroy', as: 'menu_destroy'
  post '/menu/create', to: 'menus#create', as: 'menu_create'
  put '/menu/update', to: 'menus#update', as: 'menu_update'

  #Category Api Routing
  delete '/category/destroy', to: 'category#destroy', as: 'category_destroy'
  post '/category/create', to: 'category#create', as: 'category_create'
  put '/category/update', to: 'category#update', as: 'category_update'
  get '/category/categorybymenu/:id', to: 'category#categorybymenu', as: 'categorybymenu'

end
