Rails.application.routes.draw do
  root to: 'pages#home'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'pages/account'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
