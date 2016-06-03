Rails.application.routes.draw do

  # root :to => 'api#index'
  mount_devise_token_auth_for "User", at: 'auth'

  # API routes for different versions
  constraints subdomain: 'api' do
    scope module: 'api', path: nil, defaults: {format: 'json'} do
      namespace :v1 do
        resources :users
        get '/users/:id/twitter', to: 'twitter#home_timeline'
      end
    end
  end

end
