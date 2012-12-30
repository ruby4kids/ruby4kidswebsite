class SessionsController < ApplicationController
  
  def create
    auth = request.env['omniauth.auth']
    unless @auth = ExternalAuthentication.find_from_hash(auth)
      @auth = ExternalAuthentication.create_from_hash(auth, current_user)
    end

    self.current_user = @auth.user

    render :text => "Welcome, #{current_user.name}"
  end

end
