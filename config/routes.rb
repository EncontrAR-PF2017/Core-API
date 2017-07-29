Rails.application.routes.draw do
		api_version(module: 'V1', path: { value: 'v1' }, defaults: { format: :json }) do
		resources :users, only: [:create, :show], controller: :users do
	    end
	end

  root to: 'application#index'

  require 'sidekiq/web'
  mount Sidekiq::Web, at: 'sidekiq'
  mount PgHero::Engine, at: 'pghero'
end
