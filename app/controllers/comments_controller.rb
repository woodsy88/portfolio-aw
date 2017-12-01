class CommentsController < ApplicationController

def create
  #builds a comment and associates it with the current user
  @comment = current_user.comments.build(comment_params)
end

private 

def comment_params
  params.require(:comment).permit(:content)
end

end
