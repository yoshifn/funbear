Rails.application.routes.draw do
  get '/funbear/:id' => 'application#show'
  get '/funbear/1' => 'application#first'
  get '/funbear/2' => 'application#second'
  get '/funbear/3' => 'application#third'
  get '/new_profile' => 'application#new'
  get '/create_profile' => 'application#create'
  get '/funbear/:id/edit' => 'application#edit'
  get '/update_profile/:id' => 'application#update'
  get '/funbear/:id/destroy' => 'application#destroy'
  get '/funbear' => "application#index"
end
