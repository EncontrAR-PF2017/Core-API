Rails.application.routes.draw do
		api_version(module: 'V1', path: { value: 'v1' }, defaults: { format: :json }) do

			resources :campaigns, only: [:show] do
				collection do
					get :index_all
				end
			end

			resources :finders, only: [:create] do
				collection do
					get :me
					put :update_pos
					put :edit
				end
			end

			namespace :admin do

				resources :users, only: [:create, :show, :update, :destroy]
				resources :roles, only: [:create, :show, :update, :destroy], controller: :roles do
		        	member do
		        		get :get_privileges
						post :add_privilege
						delete :remove_privilege
					end
		        end

				resources :privileges, only: [:create, :show, :update, :destroy]
				resources :alerts, only: [:create, :show, :update, :destroy]

				resources :campaigns, only: [:create, :show, :update, :destroy], controller: :campaigns do
					member do 
						get :get_owner
					end
				end

			end
	end

  root to: 'application#index'

  require 'sidekiq/web'
  mount Sidekiq::Web, at: 'sidekiq'
  mount PgHero::Engine, at: 'pghero'
end
