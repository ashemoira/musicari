Rails.application.routes.draw do
  root to: 'musirica#home'

  resources :musics, only: %i{new show create destroy edit update}
  get 'musics/index'

  resources :users, only: %i{new show create destroy edit update}
  get 'users/setting'

  get 'musirica/home'
  get 'musirica/help'

  get 'musicalist/home'
  get 'musicalist/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
