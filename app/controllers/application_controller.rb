class ApplicationController < ActionController::Base
  # Disable Cross-Site Request Forgery (CSRF) for JSON requests
  protect_from_forgery with: :exception, unless: -> { request.format.json? }
end
