Delens::Application.routes.draw do
  resources :kindergartens, shallow: true do
    resources :groups, shallow: true do
      resources :children
    end
  end

  resources :fees
  root to: 'fees#index'
end
