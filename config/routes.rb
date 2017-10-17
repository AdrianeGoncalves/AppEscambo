Rails.application.routes.draw do

  root 'site/home#index'

  namespace :site do
    get 'home/index'
  end

  namespace :backoffice do
    get 'dashboard/index'
  end

  devise_for :admins
  devise_for :members


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
