Rails.application.routes.draw do
  namespace :api do
    resources :guests, only: [:index, :create, :update, :show]
  end
end
