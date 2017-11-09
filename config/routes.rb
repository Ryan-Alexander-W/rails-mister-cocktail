Rails.application.routes.draw do



  root to: 'cocktails#index'

  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [:destroy]
end
  # get 'dose/update'

  # get 'dose/destroy'

  # get 'cocktail/index'

  # get 'cocktail/create'

  # get 'cocktail/new'

  # get 'cocktail/show'

  # get 'cocktail/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

