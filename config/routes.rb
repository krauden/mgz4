Rails.application.routes.draw do
  

  devise_for :users
  resources :usuarios
  namespace :api do
     namespace :v1 do
       resources :alumnos
     end
   end

   namespace :api do
     namespace :v2 do
       resources :usuarios
     end
   end

   namespace :api do
     namespace :v3 do
       resources :maestros
     end
   end

   namespace :api do
     namespace :v4 do
       resources :egresados
     end
   end



  get 'welcome/index'
  get '/alumnos/filtro' => 'alumnos#filtro' # or match for older Rails versions
  get '/alumnos/tutores' => 'alumnos#tutores' # or match for older Rails versions
  get '/alumnos/tutor' => 'alumnos#tutor' # or match for older Rails versions
  get '/alumnos/busqueda' => 'alumnos#busqueda' # or match for older Rails versions
  get '/egresados/graduar' => 'egresados#graduar' # or match for older Rails versions
  resources :maestros
  resources :alumnos
  resources :egresados
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
