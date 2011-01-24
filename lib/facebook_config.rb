module FacebookConfig
  class NotConfigured < Exception; end
  class << self
    attr_accessor :api_key, :secret, :app_id
  end
    
  def self.secret
    @secret || raise_unconfigured_exception    
  end
  
  def self.app_id
    @app_id || raise_unconfigured_exception
  end
  
  def self.raise_unconfigured_exception
    raise NotConfigured.new("No configuration provided for FacebookConfig. Either set the app_id and secret or call FacebookConfig.load_facebooker_yaml in an initializer")
  end
  
  def self.configuration=(hash)
    self.api_key = hash[:api_key]
    self.secret = hash[:secret]
    self.app_id = hash[:app_id]
  end
  
  def self.load_facebooker_yaml
    config = YAML.load(ERB.new(File.read(File.join(::Rails.root,"config","facebook.yml"))).result)[::Rails.env]
    raise NotConfigured.new("Unable to load configuration for #{::Rails.env} from facebook.yml. Is it set up?") if config.nil?
    self.configuration = config.with_indifferent_access
  end
  
  def self.cast_to_facebook_id(object)
    if object.kind_of?(Mogli::Profile)
      object.id
    elsif object.respond_to?(:facebook_id)
      object.facebook_id
    else
      object
    end
  end
end
