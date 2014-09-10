Rails.application.routes.draw do

  resources :items, only: [:index, :new, :create] do
    resources :traits, only: [:index, :create]
    resources :instances, only: [:index, :new, :create]
  end

  root to: 'items#index'
end
