Rails.application.routes.draw do
  get "pages/home"
  get "pages/about_us"

  resources :employees

  resources :documents
  root "employees#index"
  get "home"=> "pages#home"
  get "about" => "pages#about_us"
  get "up" => "rails/health#show", as: :rails_health_check
end
