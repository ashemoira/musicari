class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def setting
  end

  def show
  end

  def login
    user = User.find_by_name params[:name]
    if user && user.authenticate(params[:password])
      render :text => "Login OK"
    else
      render :text => "Login NG"
    end
  end

  def create
    user = User.find_by(name: params[:name])
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

    private

      def user_params
        params.require(:member).permit(:name, :email, :password, :password_confirmation)
      end
end
