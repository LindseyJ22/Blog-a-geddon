class UsersController < ApplicationController
  # before_action :authenticate, only: [:edit, :update, :destroty]
  
  #shows all users
  # GET localhost:3000/users
  def index
    @users = User.all
 end

# shows the form to make a new user
# GET localhost:3000/users/new
  def new
    @user = User.new
  end

# handles form submission and makes the new user
#POST localhost:3000/users
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'Account successfully created'
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:alert] = 'Your account did not get created'
      redirect_to new_user_path
    end
  end

#shows the user details page
#GET localhost:3000/users/:id
  def show
    @user = User.find(params[:id]) #find the user by the id that's sent in
  end

# show the form for editing the user
#GET localhost:3000/users/:id/edit
  def edit
    @user = User.find(params[:id])
    @edit = 'doing some editing here'
  end

# handles form submission for updating the user
# PATCH/PUT localhost:3000/users/:id
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @update_things = 'I am updating some things here'
    redirect_to @user
  end

# destroys the user
#DELETE localhost:3000/users/:id
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end

  private


  def user_params
    params.require(:user).permit(:first_name, :last_name, :user_name, 
    :email, :password)
  end
end
