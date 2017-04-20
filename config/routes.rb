Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Railswiki::Engine, at: "/wiki"

  get "/auth/google_login/callback" => "railswiki/sessions#create"
end
