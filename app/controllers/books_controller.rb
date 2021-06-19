class BooksController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = User.find(current_user.id)
    @book = Book.new
    @books = Book.all
  end
  def create
    # render用
    @user = User.find(current_user.id)
    @books = Book.all
    #
    @book = Book.new(post_book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book.id), notice: 'Book create successfully!!'
    else
      render "books/index"
    end
  end
  def show
    @bookdetail = Book.find(params[:id])
    @user = User.find(@bookdetail.user_id)
    @book_comments = BookComment.where(book_id: @bookdetail.id)
    @book = Book.new
    @book_comment = BookComment.new
  end
  def edit
    # render用
    @user = User.find(current_user.id)
    book = Book.find(params[:id])
    #
    if book.user_id != current_user.id
      redirect_to books_path
    else
      @book = Book.find(params[:id])
    end
  end
  def update
    @book = Book.find(params[:id])
    if @book.update(post_book_params)
      redirect_to book_path(params[:id]), notice: 'Book update successfully!!'
    else
      render 'books/edit'
    end
  end
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  def post_book_params
    params.require(:book).permit(:title, :body)
  end
end
