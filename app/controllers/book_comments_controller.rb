class BookCommentsController < ApplicationController
  def create
    books = Book.find(params[:book_id])
    book_comment = books.book_comments.new(post_book_comments)
    book_comment.user_id = current_user.id
    book_comment.book_id = books.id
    if book_comment.save!
      redirect_to book_path( book_comment.book_id)
    else
      render "books/index"
    end
  end
  def destroy
    book = Book.find(params[:book_id])
    comment = book.book_comments.find_by(id: params[:id])
    # binding.pry
    comment.destroy
    redirect_to book_path(book.id)
  end

  private
  def post_book_comments
    params.require(:book_comment).permit(:user_id, :book_id, :comment)
  end
end
