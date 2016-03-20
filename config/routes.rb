Rails.application.routes.draw do
  devise_for :users

  resources :users, only: :show
  resources :posts, only: :show do
    resources :comments do
      collection do
        get 'post_comment'
      end
    end
  end
end
