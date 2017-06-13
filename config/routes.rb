Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'pages#home', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :contacts, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
