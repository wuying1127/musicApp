Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect("/bands")
  resources :users, only: [:show, :new, :create]
  resource :session, only: [:create, :new, :destroy]

  resources :bands do
    resources :albums, only: [:new]
  end

  resources :albums, only:[:create, :show, :edit, :destroy, :update] do
    resources :tracks, only: [:new]
  end

  resources :tracks, only:[:create, :show, :edit, :destroy, :update]
end
