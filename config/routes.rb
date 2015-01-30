Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'frontpage#index'
  get 'top/' => 'frontpage#top'
  get 'new/' => 'frontpage#new'
  get 'rising/' => 'frontpage#rising'
  get 'controversial/' => 'frontpage#controversial'

  # subgeddit routing
  resources :subgeddits
  #get 'g/' => 'subgeddits#index', as: :subgeddits
  #post 'g/' => 'subgeddits#create'
  #get 'g/'
  #get 'g/:id' => 'subgeddits#show' as: :subgeddit

  # post routing
  resources :posts
  #get 'posts/:id' => 'posts#show'
  #get 'posts/:id/upvote' => 'posts#upvote'
  #get 'posts/:id/downvote' => 'posts#downvote'
  post 'posts/:id/upvote' => 'posts#upvote'
  post 'posts/:id/downvote' => 'posts#downvote'

  # users routing
  resources :users

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
