class BooksController < ApplicationController
  def hello
    render json: {
      message: 'Hello World.'
    }
  end

  def create
    book = Book.create(book_params)
    render json: book.persisted?
  end

  private
    def book_params
      params.require(:book).permit(:name, :author, :retail_price)
    end
end
