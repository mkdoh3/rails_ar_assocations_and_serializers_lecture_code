Rails.application.routes.draw do
  resources :users do
    resources :posts, shallow: true
  end

  resources :posts, except: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
