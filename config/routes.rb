IvanTheTerriblesBlog::Application.routes.draw do

  resources :posts

  resources :comments do
    resources :replies
  end

  root :to => 'posts#index'
end

