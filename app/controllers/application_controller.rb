class ApplicationController < ActionController::Base
  protect_from_forgery

#  def after_sign_in_path_for(resource)
#    up = session[:quiz]

 #   puts "***************** SAVING QUIZ: #{up}"
 #   if up && current_user.user_preference.nil?
 #     up.save
 #     current_user.user_preference = up
 #     current_user.save
 #   end
 #   root_path
 # end
end
