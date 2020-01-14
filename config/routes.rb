Rails.application.routes.draw do
  get 'welcome/index'

  resources :boards do
    resources :columns
  end

  resources :cards, only: [:destroy, :index]

  resources :users do
    resources :teams
  end

  namespace :api do
    resources :users
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
