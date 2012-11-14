class ProfileController < ApplicationController
before_filter :authenticate_user!
  def home
    @profiles = Profile.all
  end
end
