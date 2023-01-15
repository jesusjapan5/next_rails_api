class UsersController < ApplicationController
    # skip_before_action :verify_authenticity_token
   
    def index
      users = User.all
      render json: users
    end
   
    def add
      user = User.create(name: params["name"], age: params["age"])
      render json: user
    end

    def user
      user = User.find(params[:id])
      render json: user
    end
    def uuu
      user = { param: params["name"] }
      render json: user
    end
  end