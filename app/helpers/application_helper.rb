module ApplicationHelper

 def sample_helper
  #html safe cleans the html
    #when dealing with user input, dont use html save
    #when only dealing with displaying content, use html safe
   "<p>My Helper</p>".html_safe
 end

 def login_helper
     if current_user.is_a?(User) 
         link_to "Logout", destroy_user_session_path, method: :delete 
     else 
         (link_to 'Signup', new_user_registration_path) + 
         "<br>".html_safe +
         (link_to 'Login', new_user_session_path)
     end  
 end

end
