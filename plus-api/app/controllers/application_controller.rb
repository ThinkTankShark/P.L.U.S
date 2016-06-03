class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ActionController::Serialization

  # before_action :authenticate_user!
  before_action :authenticate
  # protect_from_forgery with: :null_session







  # def members_only
  #   render json: {
  #     data: {
  #       message: "Welcome #{current_user.name}",
  #       user: current_user
  #     }
  #   }, status: 200
  # end


  protected



  def authenticate
    authenticate_token || render_unauthorized
  end

  # def authenticate_token
  #   authenticate_with_http_token do |token, options|
  #     User.find_by(auth_token: token)
  #   end
  # end

  # def render_unauthorized
  #   self.headers['WWW-Authenticate'] = 'Token realm="Application"'
  #   render json: 'Bad credentials', status: 401
  # end

  #   def require_token
  #     authenticate_with_http_token do |key, options|
  #       @current_user = Token.find_by_key(key).account if Token.exists?(key: key)
  #     end
  #   end

end
