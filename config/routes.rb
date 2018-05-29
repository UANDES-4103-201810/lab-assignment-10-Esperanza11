Rails.application.routes.draw do
  devise_for :users, controllers: {:omniauth_callbacks => "callbacks"}
  resources :movies

  get "/", to: "movies#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
