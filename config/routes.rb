Delens::Application.routes.draw do
  resources :kindergartens, shallow: true do
    resources :groups
  end
end
