module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in?
    session[:user_id] ? true : false
  end

  def log_out
    session.delete(:user_id)
  end

  def current_user
    User.find(session[:user_id])
  end
end
