Rails.application.routes.draw do
	get '/', to: 'site#home'  
	get '/users/:user_id/products', to: 'products#index'
	get '/users/:user_id', to: 'users#show'
	get '/products/:product_id', to: 'products#show'
	get '/users/:user_id/products/new', to: 'products#new'
	post 'users/:user_id/products', to: 'products#create', as: :user_products
end
