class UserProfilesController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user_profile = UserProfile.find(user_id)
  end

  private

  def user_id
    params.require(:id)
  end
end