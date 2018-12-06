Rails.application.routes.draw do
  devise_for :users
   	
  resources :notices do 
  	collection do 
  		get 'homepage'
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'notices#homepage'
end
