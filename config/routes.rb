Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :resources, only: %i[show] do
    resources :resource_comments, only: %i[create]
    resources :resource_evaluations, only: %i[create]
  end

  resources :curriculums, only: [:show] do
    resources :learning_units, only: [:index]
  end

  resources :learning_units, only: [:show] do
    resources :resources, only: %i[create]
    resources :completed_learning_units, only: %i[create destroy]
  end

  root 'curriculums#show'

  namespace :api do
    resources :curriculums, only: %i[index show] do
      resources :learning_units, only: %i[index]
    end

    resources :learning_units, only: %i[show] do
      get 'completed'
      resources :resources, only: %i[index]
    end

    resources :resources, only: %i[show] do
      get 'average_evaluation'
      post 'completed', to: 'learning_units#complete_learning_unit'
      delete 'completed', to: 'learning_units#uncomplete_learning_unit'
    end

    resources :resources, only: %i[show]

    get 'current_user', to: 'users#current'

  end
end
