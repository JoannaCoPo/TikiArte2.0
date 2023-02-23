Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, 
  Rails.application.credentials.dig(:google, :google_client_id),                         
  Rails.application.credentials.dig(:google, :google_client_secret)
  # redirect_uri: 'https://localhost:3000/api/v1/auth/:oauth_provider/callback'
end
OmniAuth.config.allowed_request_methods = [:get]
# OmniAuth.config.allowed_request_methods = [:post]
OmniAuth.config.path_prefix = '/api/v1/auth'

# TODO 
# address omniauth 2.0 requiring POST method for /auth/:provider endpoint, 
# not GET to ensure CSRF protection. circle back after wiring up FE