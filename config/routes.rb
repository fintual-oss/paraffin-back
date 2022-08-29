Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/landing_page', to: 'static_pages#landing_page'
  root 'static_pages#landing_page'
end
