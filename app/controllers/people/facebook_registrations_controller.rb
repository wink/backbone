class People::FacebookRegistrationsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
  def create
    @person = Person.find_for_facebook_registration(params, current_person)
    
    if @person.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => 'Facebook'
      sign_in_and_redirect @person, :event => :authentication
    else
      session["devise.facebook_data"] = params[:registration_metadata]
      redirect_to new_person_registration_url
    end
  end
end