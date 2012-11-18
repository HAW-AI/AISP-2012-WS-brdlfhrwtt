Delens::Application.routes.draw do
  constraints(AppDomainConstraint) do
    root to: 'dashboards#show'
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

  scope module: 'manager', constraints: { subdomain: 'manager' } do
    root to: 'dashboards#show'
    resource :dashboard
  end

  scope module: 'parent', constraints: { subdomain: 'parent' } do
    root to: 'dashboards#show'
    resource :dashboard
  end
end
