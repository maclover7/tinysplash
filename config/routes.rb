Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root "businesses#index", as: :user
  end

  resources :businesses
end
