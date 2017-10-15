Rails.application.routes.draw do
		mount ActionCable.server => '/cable/'
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

				resources :users, only: [:create, :show, :update, :destroy] do
					collection do
						post :log_in
						post :log_out
					end
				end

				resources :roles, only: [:create, :show, :update, :destroy], controller: :roles do
		        	member do
		        		get :get_privileges
						post :add_privilege
						delete :remove_privilege
					end
		        end

				resources :privileges, only: [:create, :show, :update, :destroy]
				resources :alerts, only: [:create, :show, :update, :destroy] do
					collection do
		        		post :index_for_campaign
					end
				end

				resources :campaigns, only: [:create, :show, :update, :destroy], controller: :campaigns do
					member do 
						get :get_owner
					end
					collection do
						get :index_all
					end
				end

				resources :finders, only: [:show, :update, :destroy] do
					member do
						post :send_message
					end
					collection do
						get :index_all
					end
				end

				resources :missing_persons, only: [:create, :show, :update, :destroy] do
					collection do
						get :index_all
						post :search_by
					end
				end

				resources :zones, only: [:create, :show, :update, :destroy] do
					collection do
						get :index_all
						post :search_by
					end
				end
			end
	end

  root to: 'application#index'

  require 'sidekiq/web'
  mount Sidekiq::Web, at: 'sidekiq'
  mount PgHero::Engine, at: 'pghero'
end
