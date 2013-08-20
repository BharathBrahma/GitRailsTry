# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tryGitTuts_session',
  :secret      => '7f301b74f1f76160ee8f15f98b375450b3daa54314388277b184f981e1039f4168e126ef7f122f332dad45e6017965edc2301d08d09dbdaf8b7214073fa9fe81'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
