require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe '#show' do
    let!(:user) { create(:user) }
    let!(:post) { create(:post, user_id: user) }

    it 'show post details' do
      get :show, id: post.id
      expect(assigns(:post).id).to eq post.id
    end
  end
end