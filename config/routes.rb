Rails.application.routes.draw do
  devise_for :users
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
  root "articles#index"
  resources :articles do  
    resources :comments
    end
end
