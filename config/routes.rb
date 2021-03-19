Erp::Backend::Engine.routes.draw do
  namespace :backend do
    namespace :products do
      resources :products do
        collection do
          get 'list'
        end
      end
      resources :categories do
        collection do
          get 'list'
        end
      end
    end
  end
end
