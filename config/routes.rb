Delens::Application.routes.draw do
  resource :dashboard

  resources :kindergartens, shallow: true do
    resources :groups, shallow: true do
      resources :children
    end
  end
  resources :children, only: [:new, :create, :show]

  resources :fees
  root to: 'dashboards#show'
end
