class ApplicationController < ActionController::Base

  # Disable Cross-Site Request Forgery (CSRF) for JSON requests
  protect_from_forgery with: :exception, unless: -> { request.format.json? }

  # Provide current_user with controller access
  def current_user
  auth_headers = request.headers["Authorization"]
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: "HS256" }
        )
        User.find_by(id: decoded_token[0]["user_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end  
  end

  # Provide authenticate_user with controller access
  dev authenticate_user
    unless current_user
      render json: {}, status: :unauthorized
  end
end
