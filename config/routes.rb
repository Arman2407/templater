Rails.application.routes.draw do
  concern :accountable do
    resources :bank_accounts, except: :index
  end

  resources :counterparties, concerns: :accountable
  resources :businesses, concerns: :accountable
  resources :document_templates
  resources :documents, except: :new do
    get 'new/:type', to: 'documents#new', as: :new, on: :collection
  end

  devise_for :users

  authenticated :user do
    root to: "dashboard#show", as: :authenticated_root
  end

  root to: "pages#home"
end
