Delens::Application.routes.draw do
  root to: 'dashboards#show'

  resource :dashboard
  resources :fees
  resources :accounts
  resources :children, only: [:new, :create, :show]


  resources :kindergartens, shallow: true do
    resources :groups, shallow: true do
      resources :children
      member do
        get :waitlist
      end
    end
  end

  namespace :extern do
    resource :children
  end
end
