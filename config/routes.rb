Delens::Application.routes.draw do
  resources :kindergartens, shallow: true do
    resources :groups, shallow: true do
      resources :children
    end
  end
  resources :children
end
