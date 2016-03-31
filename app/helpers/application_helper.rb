module ApplicationHelper
  def admin_user
    @admin_user ||= User.find_by(id: session[:admin_user_id])
  end
end
