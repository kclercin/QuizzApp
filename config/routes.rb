require "teacher_route_constraint"
Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'user_sessions#new'

  resources :user_sessions
  resources :teachers, only: [:new, :create]

  constraints TeacherRouteConstraint.new do
    scope module: 'teachers' do
      get 'account' => "users#index", as: :account
      resources :teacher_schools, only: [:index, :new, :update]
      resources :schools, only: [:new, :update, :index, :create] do
        resources :classes
      end
    end
  end

end
