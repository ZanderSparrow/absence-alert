Rails.application.routes.draw do
  root 'static#index'

  resources :contact, only: :none do
    member do
      get 'confirm/:confirmation_token', action: :confirm, as: :confirm
      get 'reject/:confirmation_token', action: :reject, as: :reject
    end
  end
end
