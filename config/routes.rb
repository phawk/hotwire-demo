Rails.application.routes.draw do
  resources :profiles
  root to: "pages#home"
end
