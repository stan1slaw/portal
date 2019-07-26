Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :admins
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users, only: [:show]

  get 'home/index'
  resource :profile
  resources :films do
     member do
       put "like" => "films#upvote"
       put "unlike" => "films#downvote"
     end
  end
  root :to => "home#index"

  get 'persons/profile', as: 'user_root'
  get 'users/edit', as: 'edit'
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
end
