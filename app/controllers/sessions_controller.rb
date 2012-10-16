class SessionsController < ApplicationController

  def twitter_signin
    redirect_to '/auth/twitter'
  end

  def facebook_signin
    redirect_to '/auth/facebook'
  end

  def callback
    auth = request.env["omniauth.auth"]
    user = User.where(:"oauth_providers.provider" => auth['provider'], :"oauth_providers.uid" => auth['uid'].to_s).first

    if !user
      redirect_to new_registration_path("user"), :notice => "Please enter the details to finish the registration"
    else
      session[:auth] = auth
      redirect_to root_url, :notice => 'Signed in!'
    end
  end

  def create
    debugger
    auth = session[:auth]
    
    if auth
      user = User.where(:"oauth_providers.provider" => auth['provider'], :"oauth_providers.uid" => auth['uid'].to_s).first
      
      if !user
        create! do |user|
       
          @oauth_provider = OauthProvider.new
          @oauth_provider.provider = auth['provider']
          @oauth_provider.provider = auth['uid']
          @oauth_provider.save!
          user.oauth_provider = @oauth_provider 

          if auth['info']
             user.name = auth['info']['name'] || ""
          end
       
        end
      else
        redirect_to root_url, :notice => 'Signed in!'
      end

    end 
    redirect_to root_url, :notice => 'Signed in!'
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => 'Signed out!'
  end

  def failure
    redirect_to root_url, :alert => "Authentication error: #{params[:message].humanize}"
  end

end
