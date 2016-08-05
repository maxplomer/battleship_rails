Rails.application.routes.draw do
  get 'ping' => 'ping#ping'

  post 'users' => 'users#create'
  get 'users' => 'users#index'

  post 'games' => 'games#create'
  patch 'games/:id/place_ship' => 'games#place_ship'
  patch 'games/:id/bomb_computer' => 'games#bomb_computer'
  delete 'games/:id' => 'games#destroy'

end
