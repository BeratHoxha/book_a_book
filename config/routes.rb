Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'contacts/new'

  get 'contacts/create'

  get 'application/privacy' => 'application#privacy'

  get 'application/about_us' => 'application#about_us'

  get 'user/new' => 'users#new'

  get 'user/show' => 'users#show'

  post 'user/new' => 'users#create'

  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'
  
  get '/logout' => 'sessions#destroy'

  get 'bills/show', as: :credit_bill  

  get 'bills/index', as: :bills   

  post 'likes/create', as: :like 
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  scope '(:locale)' do 
    resources :products do  
    resources :comments 
      end
    resources :orders
    resources :contacts
    resources :line_items
    resources :carts
    root 'products#index', as: 'Products', via: :all
  end

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
