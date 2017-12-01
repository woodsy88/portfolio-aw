
class BlogsChannel < ApplicationCable::Channel
  #Channel needs to have ability to subscribe and unsubscribe
  def subscribed
    #looks for the blog id, then creates a channel for that blog id
    stream_from "blogs_#{params['blog_id']}_channel"
  end
  #user left the page where the channel was live
  def unsubscribed
  end
   #custom method, handles sending the data
  def send_comment(data)
    current_user.comments.create!(content: data['comment'], blog_id: data['blog_id'])
  end
end