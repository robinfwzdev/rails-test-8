class UsersController < ApplicationController
  def show
    @user = User.find(user_id)
  end

  private

  def user_id
    params.require(:id)
  end
end