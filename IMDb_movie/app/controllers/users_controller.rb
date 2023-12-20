class UsersController < ApplicationController

    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
  
      if @user.save
        redirect_to root_path, notice: 'Ви успішно зареєструвалися!'
      else
        render 'new'
      end
    end
  
    def login
    end
  
    def authenticate
      @user = User.find_by(email: params[:email])
  
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to root_path, notice: 'Ви успішно увійшли!'
      else
        flash.now[:alert] = 'Неправильний логін або пароль.'
        render 'login'
      end
    end
  
    def logout
      session[:user_id] = nil
      redirect_to root_path, notice: 'Ви успішно вийшли!'
    end
  
    private
  
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
  
  end
  