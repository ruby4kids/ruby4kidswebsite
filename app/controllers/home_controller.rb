class HomeController < ApplicationController
  layout 'public'

  def index
    render :layout => false
  end
end
