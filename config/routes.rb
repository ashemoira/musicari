Rails.application.routes.draw do
  root to: 'musirica#home'
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

  get 'musirica/home'
  get 'musirica/help'

  get 'musicalist/home'
  get 'musicalist/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
