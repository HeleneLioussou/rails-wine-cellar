Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :caves do
    member do                     # member => restaurant id in URL
      get 'bouteilles', to: "caves#bouteilles"
    end
  end

  resources :vins
  resources :bouteilles


end
