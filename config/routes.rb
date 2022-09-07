Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  get 'static_pages/landing_page', to: 'static_pages#landing_page'

  resources :resources, only: [] do
    resources :resource_comments, only: [:create]
    resources :resource_evaluations, only: [:create]
  end

  resources :curriculums, only: [:show] do
    resources :learning_units, only: [:index]
  end

  resources :learning_units, only: [:show] do
    resources :resources, only: [:show]
    resources :completed_learning_units, only %i[create delete]
  end

  root 'curriculums#show'
end
