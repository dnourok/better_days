Rails.application.routes.draw do
 	
 	 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  root to: 'users#index'
  get '/chatroom' => 'rooms#show'

  resources :users
  resources :questions
  resources :question_setup

  mount ActionCable.server => '/cable'

end

