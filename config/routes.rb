Rails.application.routes.draw do
  resources :report_covid19s
  
  get '/report_covid19s/:id/print', to: 'report_covid19s#print'
  
  
  
  resources :lab_order_items
  resources :lab_orders
  resources :hospitals
  resources :customer_users
  resources :enrollments
  resources :customer_groups
  resources :product_groups
  resources :products
  resources :customers
  resources :programs
  resources :roles
  get 'admin/index'
  devise_for :users, :controllers => { :sessions => "sessions" }
  resources :users
  get 'home/index'
  # devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
