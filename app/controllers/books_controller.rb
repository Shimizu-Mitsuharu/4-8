class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
  end

  def new
    @Books = Book.all
  	@book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path
  end

  def edit
  end

  private
  def book_params
  params.require(:book).permit(:title, :body)
end
end