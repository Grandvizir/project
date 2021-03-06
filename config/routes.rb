Tpoc::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
root 'application#index'
#get '/app' => 'application#app'

##### USER #######

get   'user/get/:user_id' => 'user#get_user_by_id'
get   'user/delete/:user_id' => 'user#delete'
post  'user/login' => 'user#get_by_email_password' # /:mail/:password
post  'user/create' => 'user#create' #/:name/:last_name/:mail/:password
post  'user/update' => 'user#update' #/:user_id/:name/:last_name/:mail/:password



####### CATEGORY ########


get 'category/get' => 'category#get'
post 'category/create/:name' => 'category#add'


######## SUBCATEGORY #######

get 'subcategory/get' => 'subcategory#get'
post 'subcategory/create' => 'subcategory#create' #/:categroy_id/:name

######## USER SUBCATEGORY #######

post 'user-subcat/create' => 'user#add_category' # :user_id/:subcategory_id
post 'user-subcat/delete' => 'user#del_category' # :user_id/:subcategory_id


####### search #######

get 'search/get' => 'search#get'

  # Example of regular route:
     

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
