class ApplicationController < ActionController::Base
  protect_from_forgery

  def permission_denied
    redirect_to root_path
  end
end
