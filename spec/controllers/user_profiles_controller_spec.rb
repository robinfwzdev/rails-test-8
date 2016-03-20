require 'rails_helper'

RSpec.describe UserProfilesController, type: :controller do
  include Devise::TestHelpers
  
  describe '#show' do
    let!(:user)         { create(:user) }
    let!(:user_profile) { create(:user_profile) }

    before { sign_in user }

    it 'show user_profile details' do
      get :show, id: user_profile.id
      expect(assigns(:user_profile).id).to eq user_profile.id
    end
  end
end