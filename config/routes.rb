Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'static_pages/landing_page', to: 'static_pages#landing_page'
  get '/curriculums/:curriculum_id/learning_units', to: 'learning_units#index'
  get '/learning_units/:id', to: 'learning_units#show'
  root 'static_pages#landing_page'
end
