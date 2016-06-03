# config/initializers/omniauth.rb
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter,        ENV['twitter_key'],   ENV['twitter_secret']
  # provider :twitter,        "Pn6CQP5XBV9ZVqz2aEKqg8kcJ",   "fZrj6Wv5OSfrnNx0sHPPvIApAS2kePTCW39Hpkg8ohHoayvaYB"
  # provider :facebook,      ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  # provider :google_oauth2, ENV['GOOGLE_KEY'],   ENV['GOOGLE_SECRET']
end
