Rails.application.routes.draw do
  # resources :contributions
  root 'users#index'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' =>'sessions#destroy'
  get 'feedback' => 'comments#index'
  get 'edit_user_comment' => 'comments#edit'
  resources :users, except: [:new] do
    resources :comments, except: [:index]
  end
end
