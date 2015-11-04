class Users::OmniauthCallbacksController < ApplicationController

  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      # # return unless is_navigational_format?
      # set_flash_message(:notice, :success, kind: "Facebook")
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to user_omniauth_authorize_path(:facebook)
    end
  end

  def failure
    redirect_to user_omniauth_authorize_path(:facebook)
  end

end
