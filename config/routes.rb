Rails.application.routes.draw do
	get "start", :to => "users#new", :as => "start"  
	get "next(/:id)", :to => "users#edit", :as => "next"
	get "done", :to => "users#done", :as => "deone"
	root :to => redirect('/start')
	resources :users
end
