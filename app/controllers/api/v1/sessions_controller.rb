class Api::V1::SessionsController < ApplicationController
  def create
    # binding.pry
    director = Director.find_or_create_by(email: director_attributes[:email])
    director.update(director_attributes)
   
    # render json: DirectorSerializer.new(director)
    # TODO look at gem options for serializers 

    # OR consider creating a dashboard and redirect to that? 
    # redirect_to 'dashboard'
  end

  private

  def authorization_hash
    request.env['omniauth.auth']
  end
  
  def director_attributes
    {
      first_name: authorization_hash[:info][:first_name], 
      last_name: authorization_hash[:info][:last_name], 
      email: authorization_hash[:info][:email], 
      token: authorization_hash[:credentials][:token], 
      google_id: authorization_hash[:uid]
    }
  end 
end
