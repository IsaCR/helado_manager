Rails.application.routes.draw do
  # root to: "home#index"

  devise_for :installs
  devise_for :users,
             controllers: {
               sessions: 'users/sessions'
             },
             path: 'auth',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               password: 'secret',
               confirmation: 'verification',
               unlock: 'unblock',
               registration: 'register',
               sign_up: 'cmon_let_me_in'
             }
end
