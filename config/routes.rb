IntroductionOmatic::Application.routes.draw do
  devise_for :events
get '/new_event' => 'events#index', as: 'new_event'
get '/try_it_out' => 'main#try', as: 'try'
post '/events' => 'events#create', as: 'events'
get '/event/:id' => 'events#show', as: 'event'
get '/event/:id/hello' => 'users#new', as: 'join'
post '/event/:id/users' => 'users#create', as: 'users'
get '/about' => 'main#about', as: 'about'
get '/join' => 'main#demo_join', as: 'demo_join'
get '/create' => 'main#demo_create', as: 'demo_create'
root 'main#about'


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
