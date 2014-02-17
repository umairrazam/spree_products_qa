Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :products do
      resources :questions
      collection do
        get :pending_questions
      end
    end
  end

  resources :questions, only: [:create]
end
