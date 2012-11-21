Delens::Application.routes.draw do
  constraints(AppDomainConstraint) do
    root to: 'dashboards#show'
    resource :dashboard

    resource :session, except: [:new]
    match 'login' => 'sessions#new', :as => :login, subdomain: 'www'
    match 'logout' => 'sessions#destroy', :as => :logout, subdomain: 'www'

    resource :oauth do
      get :callback
    end
    match "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider

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
    resources :kindergartens
    resources :managers
  end

  scope module: 'manager', constraints: { subdomain: 'manager' } do
    root to: 'dashboards#show'
    resource :dashboard
    resources :groups
  end

  scope module: 'parent', constraints: { subdomain: 'parent' } do
    root to: 'children#index'
    resources :children
  end
end
