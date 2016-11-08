Rails.application.routes.draw do
  resources :ratings
  devise_for :users
  resources :whiskeys do
    collection do
      get 'search'
    end
  end
  root 'whiskeys#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
