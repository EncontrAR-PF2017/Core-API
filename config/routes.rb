Rails.application.routes.draw do
		api_version(module: 'V1', path: { value: 'v1' }, defaults: { format: :json }) do
		resources :users, only: [:create, :show, :update, :destroy, :add_privilege]
		resources :roles, only: [:create, :show, :update, :destroy], controller: :roles do
        	member do
        		get :get_privileges
				post :add_privilege
				delete :remove_privilege
			end
        end

		resources :privileges, only: [:create, :show, :update, :destroy]
	end

  root to: 'application#index'

  require 'sidekiq/web'
  mount Sidekiq::Web, at: 'sidekiq'
  mount PgHero::Engine, at: 'pghero'
end
