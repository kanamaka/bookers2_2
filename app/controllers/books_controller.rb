class BooksController < ApplicationController
  def top
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end

  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
  end

  def about
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
