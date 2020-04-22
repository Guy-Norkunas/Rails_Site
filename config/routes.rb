Rails.application.routes.draw do
  get 'rob/test'
  get 'rob/test2'
  get 'rob/test4'
  root "home#index"
  resources :test
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
