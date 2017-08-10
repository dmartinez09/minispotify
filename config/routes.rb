Rails.application.routes.draw do


  
  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :songs do
  	member do
  		get 'add_song'
  	end
  end

  resources :users do
  	resources :user_songs
  end

  root 'songs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
