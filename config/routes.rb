Rails.application.routes.draw do
  get 'about/index'

	resources :authors
	resources :tags
	resources :articles do 
		resources :comments
	end
	resources :author_sessions, only: [:new, :create, :destroy]
	get 'login' => 'author_sessions#new'
	get 'logout' => 'author_sessions#destroy'
	root 'articles#index'

	get 'about' => 'about#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
