Rails.application.routes.draw do
  resources :resources, only: %i[show new create]
end
