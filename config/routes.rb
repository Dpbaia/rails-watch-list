Rails.application.routes.draw do
  root to: 'lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists, only: %I[index show new create] do
    resources :bookmarks, only: %I[new create]
  end

  resources :bookmarks, only: [:destroy]
end
