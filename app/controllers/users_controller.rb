class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
      @user = User.find(params[:id])
      @books = Book.where(user_id: params[:id])
      @book = Book.new
  end
  def userlist
      @user = User.find(current_user.id)
      @users = User.all
      @book = Book.new
  end
  def edit
      @user = User.find(params[:id])
      if @user.id != current_user.id
        redirect_to user_path(current_user.id)
      end
  end
  def update
    @user = User.find(params[:id])
    if @user.update(post_user_params)
      redirect_to user_path(@user.id), notice: 'user profile update successfully!'
    else
      render "users/edit"
    end
  end

  private
  def post_user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
