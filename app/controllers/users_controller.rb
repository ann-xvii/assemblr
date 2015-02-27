class UsersController < ApplicationController
  
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	# debugger, then see byebug prompt in terminal!
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params) 
  	if @user.save
  		# handle a successful save
      flash[:success] = "Welcome to Assemblr"
  		redirect_to @user
  	else
  		render :new
  	end
  end


  private

  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
