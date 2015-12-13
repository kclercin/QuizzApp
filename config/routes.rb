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
      get 'dashboard' => "dashboard#index", as: :dashboard
    end
  end

end
