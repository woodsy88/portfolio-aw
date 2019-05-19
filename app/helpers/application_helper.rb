module ApplicationHelper

 def sample_helper
  #html safe cleans the html
    #when dealing with user input, dont use html save
    #when only dealing with displaying content, use html safe
   "<p>My Helper</p>".html_safe
 end

#need to pass in a style with login helper
    #setting style = to an empty string by default for when no style is set
  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end

 def sample_helper_2
    content_tag(:div, "My Content", class: "my-class")
 end

 def source_helper(styles)
    if session[:source]

      greeting = "Thanks for visiting me from #{session[:source]}, please feel free to #{ link_to 'contact me', contact_path} if you would like to work together" 
      content_tag(:div, greeting.html_safe, class: styles)
    end 
 end

 def copyright_generator
   WoodsViewTool::Renderer.copyright 'Andrew Woods', 'All right reserved'
 end

 #NAV HELPER

 def nav_items
    [
      {
        url: work_path,
        title: 'Experience'
      },      
      {
        url: portfolios_path,
        title: 'Portfolio'
      },  
      {
        url: skills_path,
        title: 'Skills'
      },          
      {
        url: blogs_path,
        title: 'Resources'
      },
      {
        url: contact_path,
        title: 'Contact'
      },      
      # {
      #   url: tech_news_path,
      #   title: 'Tech News'
      # }
    ]
 end


 def nav_helper style, tag_type
    #style = css class, tag_type = html tag
    nav_links = ""

    nav_items.each do |item|
      #append a set of strings using <<. Shovels it onto the end. ex. ss << dd = ssdd
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active_nav_link? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
 end

 def active_nav_link? path 
  #return "active" if the current page matches the path we pass in
  "active" if current_page? path
 end



 #gets called in view
  def alerts
    #checking to see if params hash in flash msg has a value
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end
  end

  #creating a flash method, then gets called in above alerts method
  def alert_generator msg
    js add_gritter(msg, title: "Andrew Woods Portfolio", sticky: false)
  end



end


