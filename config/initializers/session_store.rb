# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_agora-sample_session',
  :secret      => 'a6654c7142abfb711a7b22959ad6d644472cea6b7ffa8c188cb18f8a06f93ee9831f9c15c4513f673c18d62b3693054eca0f5586c797f6d17f61bd0bc7e0e4b5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
