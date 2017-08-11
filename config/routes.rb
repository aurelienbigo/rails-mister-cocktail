Rails.application.routes.draw do

  get 'pages/home'

  mount Attachinary::Engine => "/attachinary"

  resources :cocktails do
    resources :doses, only: [ :new, :create ] do
      resources :ingredients, only: [ :new, :create ]
    end
  end

  resources :doses, only: [:destroy]

  resources :cocktails do
    collection do
      get 'top', to: "cocktails#top"
    end
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
