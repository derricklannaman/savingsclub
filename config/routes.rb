Rails.application.routes.draw do

  devise_for :users
  root 'home#index'

  get 'about', to: 'home#about'
  get 'contact', to: 'home#contact'
  get 'learn', to: 'home#learn'
  get 'dashboard', to: 'dashboard#show'

  resources :susus
end
