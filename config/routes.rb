Rails.application.routes.draw do
  resources :galleries do
    resources :images, :only => [:create]
  end
end
