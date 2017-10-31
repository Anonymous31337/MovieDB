Rails.application.routes.draw do
  resources :actors
  resources :movies

  get 'index/index' => 'index#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
