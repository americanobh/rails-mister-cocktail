Rails.application.routes.draw do
  resources :cocktails do
      resources :doses, only: [:new, :create, :destroy]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

