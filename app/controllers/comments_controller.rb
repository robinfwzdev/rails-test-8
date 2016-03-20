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

  private

  def post_id
    params.require(:post_id)
  end
end