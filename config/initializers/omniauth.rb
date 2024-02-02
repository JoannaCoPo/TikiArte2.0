Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, 
  Rails.application.credentials.dig(:google, :google_client_id),                         
  Rails.application.credentials.dig(:google, :google_client_secret)
  # redirect_uri = 'https://localhost:3000/api/v1/auth/google_oauth2/callback'
end
OmniAuth.config.silence_get_warning = true
OmniAuth.config.allowed_request_methods = [:get]
# OmniAuth.config.allowed_request_methods = [:post]
OmniAuth.config.path_prefix = '/api/v1/auth'

# TODO 
# add CSRF protection
