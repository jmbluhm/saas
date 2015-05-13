class ProfilesController < ApplicationController
  def new
    # form where a user can fill out their own profile.
    #find which user is logged in
    @user = User.find( params[:user_id]  )
    #prepare form, because we nested profile in routes file
    @profile = @user.build_profile
    
    
    
  end
  
  
end
