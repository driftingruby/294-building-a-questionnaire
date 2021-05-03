Rails.application.routes.draw do
  resources :questionnaires
  root to: 'questionnaires#index'
end
