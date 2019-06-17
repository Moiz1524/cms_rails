Rails.application.routes.draw do

  root 'subjects#index'
  
  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :admin_users do
    member do
      get :delete
    end
  end

  resources :sections do
    member do
      get :delete
    end
  end
  # get 'sections/index'

  # get 'sections/new'

  # get 'sections/show'

  # get 'sections/edit'

  # get 'sections/delete'

  resources :pages do 
    member do
      get :delete
    end
  end
  # get 'pages/index'

  # get 'pages/show'

  # get 'pages/new'

  # get 'pages/edit'

  # get 'pages/delete'

  resources :subjects do 
    member do 
      get :delete
    end
  end

  # get 'subjects/index'

  # get 'subjects/show'

  # get 'subjects/new'

  # get 'subjects/edit'

  # get 'subjects/delete'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/google'
  get 'demo/escape_output'
  # match "demo/index", :to => "demo#index", :via => :get (longerVersion)
  match "demo/", :to => "demo#index", :via => :get
  
  # Example of default route structure
  # :controller/:action/:id
  # GET /students/edit/52
  # GET request StudentsController, edit action, id=52
  # get ':controller(/:action(/:id))'
  
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
