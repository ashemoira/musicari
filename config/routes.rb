Rails.application.routes.draw do
  get 'musics/index'

  get 'musics/create'

  get 'musics/new'

  get 'musics/show'

  get 'musics/destroy'

  get 'musics/edit'

  get 'musics/update'

  get 'users/create'

  get 'users/new'

  get 'users/show'

  get 'users/destroy'

  root to: 'musirica#home'
  get 'musirica/home'
  get 'musirica/help'
  get 'musicalist/home'
  get 'musicalist/help'
  get 'users/setting'

  resources :users, only: %i{new create destroy show}

  resources :musics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
