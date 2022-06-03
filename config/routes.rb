Rails.application.routes.draw do
  get 'static_pages/landing_page'
  get 'static_pages/dashboard'
  root "messages#index"
  resources :messages do
    member do
      post :edit
    end
    collection do
      post :search
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
