Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :products do
      resources :questions
    end

    resources :questions, only: [] do
      collection do
        get :pending
      end
    end
  end

  resources :questions, only: [:create]
end
