Rails.application.routes.draw do


  get 'sponsors/index'

  root 'frontpage#index'

  

  devise_for :organizers
  devise_for :sponsors
  devise_for :admins

  resources :admin


 # authenticated :admin do
 #   root to: 'hq#index', as: :authenticated_root
 # end

  get 'hq' => 'hq#index'
  namespace :hq do
    resources :dashboard, only: [:index]
    resources :organizers, only: [:index, :show, :create, :destroy]
    resources :projects, only: [:index, :show, :new, :create, :destroy]
    resources :sponsor, only: [:index, :show]
  end

  get 'organizer' => 'organizers#index'
  namespace :organizers do
    resources :dashboard, only: [:index]
    resources :projects, only: [:index, :show, :edit]

    post 'project_asset' => 'projects#create_asset'

    delete '/delete_asset/:id' =>  'projects#delete_asset'
    delete 'delete_assets' => 'projects#delete_all_assets'
  end

  get 'sponsor' => 'sponsors#index'
  namespace :organizers do
    resources :projects, only: [:show, :edit]
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
