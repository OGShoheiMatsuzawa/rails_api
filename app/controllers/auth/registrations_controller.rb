class Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController

  def sign_up_params
    params.require(:registration).permit(:email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:registration).permit(:email)
  end
end
