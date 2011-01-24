Devise::OmniAuth.test_mode!

FACEBOOK_INFO = File.read(File.join(Rails.root.to_s, 'features', 'fixtures', 'facebook_me.js'))
DEFAULT_EMAIL = JSON.parse(FACEBOOK_INFO)['email']
DEFAULT_PASSWORD = 'password'
DEFAULT_FACEBOOK_UID = JSON.parse(FACEBOOK_INFO)['id']
DEFAULT_FACEBOOK_TOKEN = 'abcdef'
ACCESS_TOKEN = { :access_token => DEFAULT_FACEBOOK_TOKEN }

AfterConfiguration do
  Devise::OmniAuth.short_circuit_authorizers!
  Devise::OmniAuth.stub!(:facebook) do |b|
    b.post('/oauth/access_token') { [200, {}, ACCESS_TOKEN.to_json] }
    b.get('/me?access_token=abcdef') { [200, {}, FACEBOOK_INFO] }
  end
end

at_exit do
  Devise::OmniAuth.unshort_circuit_authorizers!
  Devise::OmniAuth.reset_stubs!
end

FakeWeb.allow_net_connect = %r[^https?://(localhost|127.0.0.1)]
FakeWeb.register_uri(:get, 'https://graph.facebook.com/me?access_token=abcdef', :response => read_fixture('facebook_me.response'))
FakeWeb.register_uri(:get, 'https://graph.facebook.com/me/friends?access_token=abcdef', :response => read_fixture('facebook_my_friends.response'))

