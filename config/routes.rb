Rails.application.routes.draw do
  resources :file_uploads do
    member do
      post 'chat'
    end
  end
end
