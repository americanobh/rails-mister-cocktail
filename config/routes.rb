Rails.application.routes.draw do
  resources :cocktail do
    resources :ingredient, only: [:new, :create] do
      resources :doses, only: [:new, :create]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
