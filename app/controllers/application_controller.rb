class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
    if current_user.account_type == 'chef'
      chefs_path
    else
      listings_path
    end
  end

end
