Rails.application.routes.draw do
 	
 	get '/concerts/max_price', to: 'concerts#max_price'
 	post '/concerts/max_price', to: 'concerts#set_max'

 	resources :concerts do
 		resources :comments
 	end

 	root 'concerts#index'

end
