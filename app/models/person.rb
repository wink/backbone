class Person
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name
  field :email, :default => "", :null => false
  field :phone_number
  field :encrypted_password, :limit => 128, :default => "", :null => false
  field :password_salt, :default => "", :null => false
  field :reset_password_token
  field :remember_token
  field :remember_created_at, :type => DateTime
  field :sign_in_count, :type => Integer, :default => 0
  field :current_sign_in_at, :type => DateTime
  field :last_sign_in_at, :type => DateTime
  field :current_sign_in_ip
  field :last_sign_in_ip 
  field :facebook_uid
  field :facebook_token
  field :admin, :type => Boolean, :default => false


  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  def self.find_for_facebook_oauth(fb_data, signed_in_resource=nil)
    data = fb_data['extra']['user_hash']
    if person = self.where(:email => data["email"]).first
      person
    else # Create an user with a stub password. 
      self.create!(:email => data["email"], :password => Devise.friendly_token[0,20]) 
    end
  end
  
  def self.new_with_session(params, session)
    super.tap do |person|
      if data = session["devise.facebook_data"] && fb_email = data["extra"]["user_hash"]
        person.email = fb_email
      end
    end
  end
end
