Rails.application.routes.draw do
  resources :pets
  resources :pet_foods
  resources :people
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
