Rails.application.routes.draw do
  get '/curriculums/:curriculum_id/learning_units', to: 'learning_units#index'
end
