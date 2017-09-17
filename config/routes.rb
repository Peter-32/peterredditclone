Rails.application.routes.draw do
  get "welcome/index"

   resources :pages # This will add many routes for CRUD of the pages model model

  root :to => "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
