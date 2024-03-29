class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :update]

    def profile
      render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end
  
    def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token({ user_id: @user.id })
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :unprocessable_entity
      end
    end

    def update
      user = User.find_by(id: params[:id])
      if user
        user.update(username: params[:username], bio: params[:bio], avatar: params[:avatar])
        render json: user
      else
        render json: { error: "User not found" }, status: :not_found
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:username, :password, :bio, :avatar)
    end
end
