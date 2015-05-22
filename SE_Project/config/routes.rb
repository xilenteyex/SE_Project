SEProject::Application.routes.draw do
  get "nurse_mainpage/show" => 'nurse_mainpage#show'

  get "sessions/new"

  get "welcome/index"
  get "reports/child_report"
  get "reports/pregnancy_report" 
  get "reports/child_report_result" 
  get "reports/polio_report_result"
  get "reports/measles_result"
  get "reports/all_result"
  resources :child_info
  root :to => redirect('/child_info')
  
  resources :reports
  root :to => redirect('/reports')	

  resources :child_info
  root :to => redirect('/child_info/new')

  resources :nurse_info
  root :to => redirect('/nurse_info')

  resources :nurse_info
  root :to => redirect('/nurse_info/new')

  get    'all_nurses' => 'nurse_info#show'
  get    'login'   => 'sessions#new'
  post   'login_new'   => 'sessions#create'
  #delete 'logout'  => 'sessions#destroy'
  get 'logout'  => 'sessions#destroy'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
