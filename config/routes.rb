Rails.application.routes.draw do

  devise_for :users
  get 'welcome/index'

  resources :articles, only: [:index, :show]
  resources :tags, only: [:show]

  root 'welcome#index'

  namespace :admin do
    resources :articles, except: [:index, :show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
