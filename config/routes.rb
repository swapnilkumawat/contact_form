Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/contacts', to: 'contacts#new'

  post '/contacts', to: 'contacts#create'

  get '/change-locale', to: 'contacts#change_locale'

  get '(*any)' , to: redirect('/contacts')

end
