# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#landing_page'
  get 'home', to: 'home#index'
  get '/logout', to: 'application#logout'

  get '/validation/:id', to: 'home#validation'

  get '/api/change_status/:id', to: 'api#change_status'

  get '/api/', to: 'api#index'

  resources :home, only: [] do
    post 'login', on: :collection
    post 'signup', on: :collection
    post 'forgotPassword', on: :collection
  end

  resources :user, only: [:index] do
    collection do
      resources :events, only: [:show] do
        resources :slides, only: [:create]
      end
    end
  end

  resources :client, only: [:index] do
    collection do
      resources :events, only: [:show] do
        resources :negotiations, only: [:create]
        resources :slides, only: [:create] do
          resources :comments, only: [:create]
        end
      end
    end
  end

  resources :admin, only: [:index] do
    collection do
      resources :events, only: %i[show update new create edit] do
        resources :negotiations, only: [:create]
        resources :slides, only: [:create] do
          resources :comments, only: [:create]
        end
      end
      resources :forms, only: %i[show create]
    end
  end
end
