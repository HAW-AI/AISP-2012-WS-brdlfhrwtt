Delens::Application.routes.draw do
    root to: 'dashboards#show'
  constraints(AppDomainConstraint) do
    resource :dashboard
    resources :fees
    resources :accounts
    resources :children


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

  scope module: 'admin', constraints: { subdomain: 'admin' } do
    root to: 'dashboards#show'
    resource :dashboard
  end
end
