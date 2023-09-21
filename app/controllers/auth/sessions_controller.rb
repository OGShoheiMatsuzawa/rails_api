class Auth::SessionsController < DeviseTokenAuth::SessionsController

  def resource_params
    params.require(:session).permit(*params_for_resource(:sign_in)) 
  end
end
