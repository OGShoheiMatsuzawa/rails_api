class Api::V1::HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    render json: { message: 'hello' }
  end
end