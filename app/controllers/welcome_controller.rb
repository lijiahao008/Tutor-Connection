class WelcomeController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  	if user_signed_in?
  		redirect_to profiles_path
  	end
  end

  def contact
  end

end
