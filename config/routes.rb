Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :articles

    root to: 'users#index'
  end
  devise_for :users

  authenticate :user, ->(user) { user.admin? } do
    mount GoodJob::Engine => 'good_job'
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#index'

  get '/articles', to: 'articles#index'
end
