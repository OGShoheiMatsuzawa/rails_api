class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    users = User.order(created_at: :desc)
    render json: { status: 'SUCCESS', message: 'Loaded posts', data: users }
  end 

  def show
    render json: { status: 'SUCCESS', message: 'Loaded the post', data: @user }
  end 

  def set_user
    @user = User.find(params[:id])
  end
end
