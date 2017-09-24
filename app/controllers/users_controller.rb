class UsersController < ApplicationController
  def setting
  end

  def new
    @user = User.new
  end

  def create
    user = User.create(user_params)
    if user.save
      log_in @user
      redirect_to user
    else
      redirect_to users_new_path
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      render 'show'
    else
      render 'edit'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

    private

      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
end
