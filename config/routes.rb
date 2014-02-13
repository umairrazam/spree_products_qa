Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :products do
      resources :questions
    end
  end
end
