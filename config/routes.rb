Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root "businesses#index", as: :user
  end

  get "tinysplash", to: "high_voltage/pages#show", id: "marketing"

  resources :businesses

  get "/:id" => "businesses#show"
end
