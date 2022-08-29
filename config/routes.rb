Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#landing_page'
  get '/landing_page', to: 'static_pages#landing_page'
end
