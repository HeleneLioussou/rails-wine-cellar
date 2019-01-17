Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cellars do
    resources :bouteilles, only: [:new, :create, :update, :edit, :destroy ]
  end

  resources :vins


end
