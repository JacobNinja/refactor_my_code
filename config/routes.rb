Rails.application.routes.draw do

  controller :application do
    get :index
    post :analyze
  end
  root to: 'application#index'

end
