Rails.application.routes.draw do
	get '/', to: 'products#index'  
	get '/users/index', to: 'users#index'
	get '/users/new', to: 'users#new'
	post '/users/create', to: 'users#create', as: :users
	get '/users/:id', to: 'users#show', as: :users_show
	get '/users/:id/destroy', to: 'users#destroy'
	
	get '/products/index', to: 'products#index'
	get '/products/:product_id', to: 'products#show', as: :products_show
	get '/users/:user_id/products/new', to: 'products#new'
	post 'users/:user_id/products/create', to: 'products#create', as: :user_products
	get '/products/:product_id/destroy', to: 'products#destroy'

	post 'products/:product_id/bids/new', to: 'bid#create', as: :product_bids
end
