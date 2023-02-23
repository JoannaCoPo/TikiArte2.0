class Api::V1::SessionsController < ApplicationController
  def create
    director = Director.find_or_create_by(email: director_params[:email])
    director.update(first_name: director_params[:first_name], 
                    last_name: director_params[:first_name], 
                    token: director_params[:token], 
                    google_id: director_params[:google_id])
    # render json: DirectorSerializer.new(director)
    # TODO look at gem options for serializers 
  end

  def authorization_hash
    request.env['omniauth.auth']
  end
  
  def director_params
    {
      first_name: authorization_hash[:first_name], 
      last_name: authorization_hash[:first_name], 
      email: authorization_hash[:email], 
      token: authorization_hash[:token], 
      google_id: authorization_hash[:google_id]
    }
  end 
end

# define session id => current_user
# think about non-oauth login option 
# RegistrationService(whatever params)
