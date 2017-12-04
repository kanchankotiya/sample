
Rails.application.routes.draw do

  
  
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  devise_scope :user do
  authenticated :user do
    root 'subjects#index', as: :authenticated_root
  end
end

 resources :demos
  root 'demos#index'
  resources :subjects do
    member do 
       get :delete
  end
end

  resources :photos
  get 'demo/index'
  get 'demo/hello'
  get 'demo/hello1'
  get 'demo/youtube'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
