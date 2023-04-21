Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :customer_subscriptions, only: [:create]
      resources :customers, only: [] do
        resources :subscriptions, only: [:index]
      end
    end
  end
end
