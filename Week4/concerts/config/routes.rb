Rails.application.routes.draw do
 	resources :concerts do
 		resources :comments
 	end

 	get 'max_price', to 'concerts#max_price'

 	root 'concerts#index'


end
