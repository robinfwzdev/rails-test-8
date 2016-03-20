class CommentsController < ApplicationController
  before_action :authenticate_user!

  def post_comment
    @post    = Post.find(post_id)
    @comment = @post.comments.new(message: params[:message], user_id: current_user.id )
    @comment.save

    respond_to do |format|  
      format.js { render template: "posts/show.js.erb" }
    end
  end

  def user_profile_comment
    @user_profile    = UserProfile.find(user_profile_id)
    @comment = @user_profile.comments.new(message: params[:message], user_id: current_user.id )
    @comment.save

    respond_to do |format|  
      format.js { render template: "user_profiles/show.js.erb" }
    end
  end

  private

  def post_id
    params.require(:post_id)
  end

  def user_profile_id
    params.require(:user_profile_id)
  end
end