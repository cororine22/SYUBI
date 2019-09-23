Rails.application.routes.draw do

  #get 'steps/new'

  #get 'steps/index'

  #get 'steps/show'

  #get 'steps/create'

  root 'tasks#index'

  resources :tasks do
    resources :steps, shallow: true
  end
end
