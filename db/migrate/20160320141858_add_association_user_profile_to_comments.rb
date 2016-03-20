class AddAssociationUserProfileToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :user_profile, index: true
  end
end
