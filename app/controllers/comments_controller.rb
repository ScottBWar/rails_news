class CommentsController < ApplicationController

def index
  @comment = Comment.all

end

def new
  @comment = Comment.new
end

def create
  @comment = Comment.new(comment_params)
  if @comment.save
    redirect_to :back
  end
end







def comment_params
  params.require(:comment).permit(:content, :post_id)
end

end
