class UserPreferencesController < ApplicationController

  def show

    @user_preference = UserPreference.new(:skin_tone => 'fair', :undertone => 'cool', :eye_color => 'blue')
    render :layout => 'quiz'

  end

  def create
    @up = UserPreference.new(params)
    session[:quiz] = @up

    puts "******* QUIZ: #{@up}"
    respond_to do |format|
      format.json do render :json => { 'url' => new_user_registration_url } end
      format.html do redirect_to new_user_registration_url end     #TODO: We should return this url for Ajax requests, so that it's not hard-coded in the client
    end
  end

end
