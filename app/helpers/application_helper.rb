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

 def source_helper(layout_name)
    if session[:source]

      greeting = "Thanks for visiting me from #{session[:source]} and you are on the #{layout_name} layout" 
      content_tag(:p, greeting, class: "source-greeting")
    end 
 end

 def copyright_generator
   WoodsViewTool::Renderer.copyright 'Andrew Woods', 'All right reserved'
 end

 #NAV HELPER

 def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_me_path,
        title: 'About Me'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
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

end


