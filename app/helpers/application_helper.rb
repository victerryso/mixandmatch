module ApplicationHelper
def smartnav
    links = ''
    # if @current_user.try(:is_admin)
    #   links += "<li>" + link_to('View users', users_path) + "</li>"
    # end

    if @current_user.present?
      links += "<li>"
      links += link_to('Logout ' + @current_user.firstname, login_path, :data => {:method => :delete, :confirm => 'Logout?'})
      links += "</li>"
      links += "<li>"
      links += link_to('View Profile', user_path(@current_user))
      links += "</li>"
      links += "<li>"
      links += link_to('Edit Profile', edit_user_path(@current_user))
      links += "</li>"
      links += "<li>"
      links += link_to('Delete Profile', @current_user, :data => {:method => :delete, :confirm => 'Delete?'})
      links += "</li>"
    else
      links += "<li>#{ link_to('Sign up', new_user_path) }</li>"
      links += "<li>#{ link_to('Sign in', login_path) }</li>"
    end

    links
  end
end
