Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  scope '/api', defaults: { format: :json } do
    resources :categories, only: [:index]
    resources :restaurants, only: [:index, :show]
    resources :orders, only: [:create, :show]
    resources :available_cities, only: [:index]
  end
end
