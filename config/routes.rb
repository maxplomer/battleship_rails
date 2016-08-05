Rails.application.routes.draw do
  get 'ping' => 'ping#ping'

  post 'users' => 'users#create'
  get 'users' => 'users#index'

end
