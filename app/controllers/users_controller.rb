class UsersController < ApplicationController
  #предфильтры для защиты действий edit и update и index
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  #Предфильтр открывающий доступ к действию destroy только админам
  before_action :admin_user, only: :destroy
  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @feed_items  = Book.where("user_id = ?", current_user.id);
    @comment_user = Comment.where("user_id = ?", current_user.id);
  end
  
  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
    	flash[:success] = "Добро пожаловать, Странник!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Профиль обновлён!"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Пользователь удален."
    redirect_to users_url
  end
  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
