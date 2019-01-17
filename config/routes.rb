Rails.application.routes.draw do
  root 'home#index'

  get 'about' => 'home#about'
  get 'media'=> 'home#media'
  get 'contact' => 'home#contact'

  get 'repertoire' => 'repertoires#index'

  resources :repertoires
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
