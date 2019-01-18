Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cellars do
    resources :bouteilles, only: [:new, :create, :destroy, :edit, :update]
  end

  resources :vins


end
