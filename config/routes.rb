Rails3MongoidDeviseOmniauth::Application.routes.draw do
  match '/auth/:provider/callback' => 'authentications#create'
  match '/registrations' => 'registrations#email'
  root :to => "home#index"
  devise_for :users
  resources :users, :only => :show
  resources :authentications

  root :to => "home#index"
  resources :users, :only => [:index, :show, :edit, :update ]
  match '/auth/:provider/callback' => 'sessions#create'
  match '/signin' => 'sessions#new', :as => :signin
  match '/signout' => 'sessions#destroy', :as => :signout
  match '/auth/failure' => 'sessions#failure'
  match '/tw_signin' => 'sessions#twitter_signin'
  match '/fb_signin' => 'sessions#facebook_signin'

  match ':controller(/:action(.:format))'
  match ':controller(/:action(/:id(.:format)))'
end
