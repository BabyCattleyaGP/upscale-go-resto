Rails.application.routes.draw do
  get 'welcome/index'

  resources :foods

  root 'welcome#index'
end
