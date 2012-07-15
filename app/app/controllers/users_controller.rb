class UsersController < ApplicationController
def index 
@users=User.all
end
def show
@user=User.find(params[:id])
end
def new
@user=User.new
end
def create 
User.create!(params[:user])
redirect_to :controller => "users", :action => 'index'
end
def destroy
User.find(params[:id]).destroy
redirect_to :controller => "users", :action => 'index'
end 
def edit 
@user= User.find(params[:id])
end
end
