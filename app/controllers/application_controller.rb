class ApplicationController < ActionController::API

  def current_user
    auth0_info = get_auth0_info
    return nil unless auth0id
    @current_user ||= User.find_by_auth0id(auth0_info[0])
  end

  def get_auth0_info
    require 'jwt'
    
    auth0_client_id = ENV['AUTH0_CLIENT_ID']
    auth0_client_secret = ENV['AUTH0_CLIENT_SECRET']
    token = params['token']

    decoded_token = JWT.decode(token, JWT.base64url_decode(auth0_client_secret))

    p "helloworld"
    p decoded_token[0]
    p "helloworld"

    if auth0_client_id == decoded_token[0]['aud']
      [decoded_token[0]['sub'], 'helloworld']
    else
      nil
    end
  end

end
