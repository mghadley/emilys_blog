Rails.application.routes.draw do
  get 'comments/new'

  devise_for :users
  resources 'entries' do
    resources 'comments'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 
  root 'entries#index'
end
