class People::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    raise 'hello'
    @person = Person.find_for_facebook_oauth(env["omniauth.auth"], current_person)
    
    if @person.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => 'Facebook'
      sign_in_and_redirect @person, :event => :authentication
    else
      session["devise.facebook_data"] = env["omniauth.auth"]
      redirect_to new_person_registration_url
    end
  end
  
  def facebook_registration
    
  end
end