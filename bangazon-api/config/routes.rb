Rails.application.routes.draw do
  resources :employee_programs
  resources :employees
  resources :employee_types
  resources :training_programs
  resources :computers
  resources :departments
	resources :order_products
	resources :orders
	resources :products
	resources :product_types
	resources :payment_types
	resources :customers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

