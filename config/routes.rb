Rails.application.routes.draw do  
  resources :line1_items
  resources :line_items
  resources :carts
  get 'store/index'

  resources :product1s
	
  get 'product1s/new'
	
  get 'student7/login'
  post 'student7/index'
  get 'student7/index'

  get 'student6/login'
  post 'student6/index'
  get 'student6/index'

  get 'student5/index'
  post 'student5/index'
  get 'student5/login'

  get 'student4/login'
  post 'student4/index'
  get 'student4/index'

  get 'student3/login'
  post 'student3/index'
  get 'student3/index'

  get 'student2/index'
  post 'student2/index'
  get 'student2/login'

  get 'student1/index'
  post 'student1/index'
  get 'student1/login'

  get 'student/index'
  post'student/index'
  get 'student/login'

  get 'welcome/login'
  get 'welcome/index' ,to: 'welcome#index'
  get 'welcome/show'
  get 'welcome/sofa'
  get 'welcome/home'
  get 'welcome/office'
  get 'welcome/logincustomer'
  get 'welcome/regcustomer',to: 'welcome#regcustomer'
  get 'welcome/regcleaner', to: 'welcome#regcleaner'
  get 'welcome/logincleaner', to: 'welcome#logincleaner'
  get 'welcome/searchcustomer'
  get 'welcome/searchcleaner'
  get 'welcome/contact'
  get 'welcome/booking'
  
  root 'welcome#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

#resource created
#controller made
#function in controller
#model create