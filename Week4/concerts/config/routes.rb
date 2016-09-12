Rails.application.routes.draw do
	get 'site/index'

 	resources :concerts

 	root 'site#index'


end
