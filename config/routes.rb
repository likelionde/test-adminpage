Rails.application.routes.draw do
  
  devise_for :users
  mount RailsAdmin::Engine => '/tbs2/admin2', as: 'rails_admin' #devise_for보다 아래에 넣어야함 
  root 'posts#index'
  resources :posts
  get '/errorpage/error_page'
  #post '/tbs2/admin2' => 'rails_admin/main#dashboard'
  
  get '/diary/index'
  get '/diary/dWrite'
  post '/d_write' => 'diary#d_write'
  get '/diary/dView/:diary_id' => 'diary#dView'
  post '/diary/dView/:diary_id' => 'diary#dView'
  get '/dDelete/:diary_id' => 'diary#dDelete'
  post '/commentWrite' => 'diary#commentWrite'
  get '/commentDelete/:comment_id/:diary_id' => 'diary#commentDelete'
  get '/commentUpdate/:comment_id/:diary_id' => 'diary#commentUpdate'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'posts_controller#index'

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
