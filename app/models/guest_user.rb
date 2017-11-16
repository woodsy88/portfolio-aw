class GuestUser < User 
  #attr allows GuestUser to have and hold data
  attr_accessor :name, :first_name, :last_name, :email
end