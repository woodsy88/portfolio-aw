class CommentBroadcastJob < ApplicationJob
  #creating a list to hold comments( if mutiple users enter comments they are entered into this queue to be served)
  queue_as :default

  #gives us a direct connection and starts a broadcast on ActionCable and connects it to a channel. Users can be on different channels.
  def perform(comment)
    ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
  end

  private

  #renders a commment partial, feeds it into the above perform method. Locals allows you to dynamically show comments without having to refresh the page
  def render_comment(comment)
    CommentsController.render partial: 'comments/comment', locals: { comment: comment }
  end

end