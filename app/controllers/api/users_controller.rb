class Api::UsersController < ApplicationController

def create
  @user = User.new(
  email: params[:email],
  first_name: params[:first_name],
  last_name: params[:last_name],
  #need to look at password_digest
  )
  if @user.save
    render json: {message: "HELLO! IT WORKED"}
  else
    render json: {message: "something is not quite right...."}
  end
end

end
