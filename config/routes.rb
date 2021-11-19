Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, only: [:show, :new, :create] do
    resources :bookmarks, only: [:new, :create] do
      resources :movies, only: [:index, :show]
    end
  end
end
