module ApplicationHelper
def smartnav
    links = ''
    # if @current_user.try(:is_admin)
    #   links += "<li>" + link_to('View users', users_path) + "</li>"
    # end

    if @current_user.present?
      links += "<div class='top'>"
      links += link_to('Home', root_path)
      links += "</div>"
      links += "<div class='top'>"
      links += link_to('Logout', login_path, :data => {:method => :delete, :confirm => 'Logout?'})
      links += "</div>"
      links += "<div class='top'>"
      links += link_to('View', user_path(@current_user))
      links += "</div>"
      links += "<div class='top'>"
      links += link_to('Edit', edit_user_path(@current_user))
      links += "</div>"
      links += "<div class='top'>"
      links += link_to('Delete', @current_user, :data => {:method => :delete, :confirm => 'Delete?'})
      links += "</div>"
    else
      links += "<div class='top'>#{ link_to('Sign Up', new_user_path) }</div>"
      links += "<div class='top'>#{ link_to('Sign In', login_path) }</div>"
    end

    links
  end
end