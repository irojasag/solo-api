class ApplicationController < ActionController::API 
   before_action :cors_set_access_control_headers


  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, PATCH, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = '*'
  end
  
  include Response
  include ExceptionHandler
  include DeviseTokenAuth::Concerns::SetUserByToken
end
