Rails.application.routes.draw do
  devise_for :users

  resources :user_profiles, only: :show do
    resources :comments do
      collection do
        get 'user_profile_comment'
      end
    end
  end

  resources :posts, only: :show do
    resources :comments do
      collection do
        get 'post_comment'
      end
    end
  end
end
