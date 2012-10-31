Delens::Application.routes.draw do
  resource :dashboard
  resources :children, only: [:new, :create, :show]

  resources :kindergartens, shallow: true do
    resources :groups, shallow: true do
      resources :children
    end
  end

  resources :fees
  root to: 'dashboards#show'
end
