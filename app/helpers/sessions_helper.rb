module SessionsHelper
  def at_login_path?
   request.env['PATH_INFO'] == login_path
  end
end
