Rails.application.routes.draw do
  get 'uploads/new'
  resources :uploads
  devise_for :users,
             path: '',
             path_names: {
                 sign_in: 'login',
                 sign_out: 'logout',
                 registration: 'signup',
             },
             controllers: {
                 sessions: 'sessions',
                 registrations: 'registrations'
             }
end