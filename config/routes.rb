Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Railswiki::Engine, at: "/wiki"

  get "/auth/google_login/callback" => "railswiki/sessions#create"
  get "/auth/google_login" => "railswiki/sessions#create", as: :login

  get "*path", to: 'railswiki/pages#show', via: :get, as: :slug

  root to: "railswiki/pages#show", id: "Home"
end
