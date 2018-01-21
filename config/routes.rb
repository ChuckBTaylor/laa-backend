Rails.application.routes.draw do


  namespace :api do
    namespace :v1 do
      resources :states
      resources :districts
      resources :reps
      resources :users
      resources :senators
      resources :rolls
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
