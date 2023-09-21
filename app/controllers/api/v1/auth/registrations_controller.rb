class Api::V1::Auth::RegistrationsController < ApplicationController

  private

  def sign_up_params
    params.permit(:uid, :provider, :password, :password_confirmation)
  end

  def account_update_params
    params.permit(:uid, :provider)
  end
    
end
