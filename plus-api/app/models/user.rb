require 'securerandom'

class User < ApplicationRecord
  include DeviseTokenAuth::Concerns::User
  before_create :set_auth_token

  # @headers  = { 'Authorization' => "Token token=\"#{ENV['twitter_key']}\"" }

  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable

end
