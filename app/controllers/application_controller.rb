class ApplicationController < ActionController::API
  # before_action :authenticate_user!, except: [:new, :create] # sign_inにPOSTして401が出る対策
  include DeviseTokenAuth::Concerns::SetUserByToken
end
