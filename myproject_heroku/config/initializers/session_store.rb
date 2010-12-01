# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_myproject_session',
  :secret      => '7fb0a7ffaf2ae58f3b27a46608d69b20adc2d37ad3bcf9a827c5e9547278aa90eb7d4eb5baf315edd4d412f22a5d9aab18dc54872237a0092c70623f7b024432'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
