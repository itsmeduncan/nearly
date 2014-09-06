Rails.application.routes.draw do

  resources :items do
    resources :traits
    resources :instances
  end

  root to: 'items#index'
end
