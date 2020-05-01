Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/ingredients', to: 'ingredients#index', as: 'ingredients'
  get '/ingredients/new', to: 'ingredients#cad', as: 'new_ingredient'
  resources :cocktails do
    resources :ingredients, only: %i[new create destroy]
  end
end
