module ApplicationHelper

 def sample_helper
  #html safe cleans the html
    #when dealing with user input, dont use html save
    #when only dealing with displaying content, use html safe
   "<p>My Helper</p>".html_safe
 end

#need to pass in a style with login helper
 def login_helper style
     if current_user.is_a?(GuestUser) 
          (link_to 'Signup', new_user_registration_path, class: style) +
          " " +
         (link_to 'Login', new_user_session_path, class: style)
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

end

