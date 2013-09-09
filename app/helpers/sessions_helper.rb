module SessionsHelper
  def current_user
    remember_token = StudentUser.encrypt(cookies[:remember_token])
    @current_user ||= StudentUser.find_by(remember_token: remember_token)
  end

  def current_user=(user)
    @current_user = user
  end

  def sign_in(user)
    remember_token = StudentUser.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, StudentUser.encrypt(remember_token))
    self.current_user = user
  end


  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end
end



