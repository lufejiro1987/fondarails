Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :fondas, except: [:edit, :update]
  root to: 'fondas#index'
end
