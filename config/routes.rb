Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :caves do
    member do                     # member => restaurant id in URL
      get 'vins', to: "caves#vins"
    end
    resources :bouteilles
  end

  resources :vin


end
