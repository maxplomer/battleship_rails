class ApplicationController < ActionController::API

  def current_user
    auth0id = get_auth0id
    return nil unless auth0id
    @current_user ||= User.find_by_auth0id(auth0id)
  end

  #private

  def get_auth0id
    require 'jwt'

    token = request.headers['Token']

    decoded_token = JWT.decode(token, JWT.base64url_decode(auth0_client_secret))
    
    if auth0_client_id != decoded_token[0]['aud']
      decoded_token[0]['sub']
    else
      nil
    end

  end

end
