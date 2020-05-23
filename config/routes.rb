Rails.application.routes.draw do
  resources :counterparties
  resources :businesses
  resources :document_templates
  devise_for :users

  authenticated :user do
    root to: "dashboard#show", as: :authenticated_root
  end

  root to: "pages#home"
end
