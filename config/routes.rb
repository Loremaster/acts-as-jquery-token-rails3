ActsAsJqueryTokenRails3::Application.routes.draw do
  resources :movies do
    collection do
      get :tags, as: :tags
    end
  end

  root :to => 'movies#index'
end
