class FavoritesController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: book.id)
    # binding.pry
    favorite.save
    redirect_to book_path(book.id)
  end
  def destroy
  end
end
