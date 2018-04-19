Rails.application.routes.draw do
  resources :micropost

  devise_for :users
    as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end

  root to: 'home#index'
  get 'redirect_to_donate', to: 'donation#create_log', as: 'redirect_to_donate'

  post 'applause', to: 'applause#create', as: 'applause_create'
  post 'donation', to: 'donation#add_donation', as: 'add_donation'
  post 'treatment', to: 'treatment#add_treatment', as: 'add_treatment'
  
  post '/purchase' => 'orders#purchase_status'
  get "refund/:id", to: "orders#refund"

  get 'thankyou', to: 'home#thankyou', as: 'thankyou'
  get 'confirmation', to: 'home#confirmation', as: 'confirmation'
  # get 'calendar', to: 'home#calendar', as: 'calendar'

  resources :issue, only: [:create]

  get 'gift/:date', to: 'gift#show', as: 'gift_of'
  post 'gift_order', to: 'gift#order', as: 'gift_order'

  get 'admin_home', to: 'admin#home', as: 'admin_home'
  get 'admin_status_update', to: 'admin#status_update', as: 'status_update'
end
