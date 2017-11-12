Rails.application.routes.draw do
  root 'quotes#show'
  get :status, to: 'status#index'
end
