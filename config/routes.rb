Rails.application.routes.draw do
	root 'crypto_markets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  namespace :api do
  	namespace :v1 do
  		resources :crypto_markets, only: :index
  	end
  end
end
