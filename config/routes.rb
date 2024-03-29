Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "demo#index"

  get 'example/about'
  get 'example/show'
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/lynda'
  # get ':controller(/:action(/:id))'
  # This dynamic default route will be depricated in Rails 7.2 ... do not use
  #
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

end
