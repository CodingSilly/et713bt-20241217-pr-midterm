Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments, only: [:create]
  end
end
