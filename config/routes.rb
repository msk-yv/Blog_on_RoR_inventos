Rails.application.routes.draw do
  get 'welcome/index'
  # For dtails on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
  root 'welcome#index'
  resources :articles do
	  resources :comments
  end
end
