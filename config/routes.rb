Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#index'
  
  get 'pages/index'

  resources :tests, path: '/tests', only: [:index, :show], category_slug: 'tests'

  post 'tests/:id/questions', to: 'questions#answer', as: :question_answer
  get 'tests/:id/questions/:question_id', to: 'questions#show', as: :question_ask
  #post 'tests/:id/questions/:question_id', to: 'questions#answer', as: :question_answer

  get 'pages/finish', as: :finish
  
end
