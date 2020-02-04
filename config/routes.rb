Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      namespace :v1 do
        resources :services, only: [:index, :update]
        get '/', to: 'service#index', as: 'home'
      end
    end

end
