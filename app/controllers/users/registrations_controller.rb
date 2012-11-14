class Users::RegistrationsController < Devise::RegistrationsController

  def new
    @quiz = session[:quiz]
    require 'pp'
    pp "******** QUIZ: #{@quiz}"
    super
  end

  def create
    super
    @quiz = session[:quiz]

    if current_user
      #@quiz.user = current_user
      puts "********** CREATING USER PREFERENCES with #{@quiz}"

      current_user.user_preference = @quiz
      current_user.save
      #current_user.create_user_preference(hair_color:"blonde") # this works, but we have to pass in all teh values

      puts "*****Done"
      puts "#{current_user.user_preference}"
      puts "#{current_user.user_preference.hair_color}"
    end
  end

end