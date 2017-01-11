Rails.application.routes.draw do
  root 'jobs#index'
  resources :jobs
  resources :jobs do
      resources :resumes
    end
  devise_for :users
  namespace :admin do
    resources :jobs do

      member do
        post :publish
        post :hide
      end
    end
  end

end
