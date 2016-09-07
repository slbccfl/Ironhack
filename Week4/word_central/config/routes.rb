Rails.application.routes.draw do
	get '/', to: 'site#home'
	get '/text_inspections/new', to: 'text_inspections#new'
	post "/text_inspections", to: "text_inspections#create"
end
