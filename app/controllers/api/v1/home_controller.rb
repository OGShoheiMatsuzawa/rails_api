class Api::V1::HomeController < ApplicationController

  def index
    render json: { message: 'hello' }
  end
end
