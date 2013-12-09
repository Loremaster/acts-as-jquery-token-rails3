ActsAsJqueryTokenRails3::Application.routes.draw do
  resources :movies

  root :to => 'movies#index'
end
