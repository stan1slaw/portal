Rails.application.routes.draw do
  resources :franchises
  get 'favorites/update'
  get 'review/index'
  get 'review/show'
  get 'review/destroy'
  get 'review/edit'
  get 'review/update'
  get 'review/new'
  get 'search_films/:q' => 'films#search_films'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'actors/index'
  get 'actors/create'
  get 'actors/new'
  get 'actors/edit'
  get 'actors/show'
  get 'actors/update'
  get 'actors/destroy'
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
  resources :albums
  get 'home/index'
  resource :profile
  resources :films do
     member do
       put "like" => "films#upvote"
       put "unlike" => "films#downvote"
     end
  end
  resources :actors
  root :to => "home#index"

  get 'persons/profile', as: 'user_root'
  get 'users/edit', as: 'edit'
  post '/films/:id/actors/new' => 'films#add_actor', as: :add_actor
  delete '/films/:id/actors/:actor_id' => 'films#remove_actor', as: :remove_actor
  post '/actors/:id//films/new' => 'actors#add_film', as: :add_film
  delete '/actors/:id//films/:film_id' => 'actors#remove_film', as: :remove_film
  resources :posts
  root 'posts#index'
  get 'tags/:tag', to: 'posts#index', as: :tag
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    # your routes here...
  end
  root 'articles#index'

  resources :films do
    resources :comments, :only => [:create, :destroy]
  end
  resources :comments do
    resources :comments, :only => [:create, :destroy]
  end
  resources :films do
    resources :reviews
  end
  resources :films do
    collection do
      get :autocomplete
    end
  end

  resources :password_resets


  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
