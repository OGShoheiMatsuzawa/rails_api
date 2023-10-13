Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'auth/registrations',
        sessions: 'auth/sessions'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace 'api' do
    namespace 'v1' do
      resources :posts
      resources :users, only: [:index, :show]
      resources :home, only: [:index]
    end
  end

  namespace :auth do
    resources :sessions, only: %i[index]
  end
end
