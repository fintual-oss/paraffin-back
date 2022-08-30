Rails.application.routes.draw do
  resources :resources, only: %i[show new create]
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'static_pages/landing_page', to: 'static_pages#landing_page'
  get '/curriculums/:curriculum_id/learning_units', to: 'learning_units#index'
  root 'static_pages#landing_page'
  resources :resources, only: %i[show]
end
