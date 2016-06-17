Rails.application.routes.draw do
  resources :schedules
  root "schedules#index"
  get 'search', to: 'schedules#search'

end
