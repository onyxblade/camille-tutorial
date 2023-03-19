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

  def show
    book = Book.find(params[:id])
    render json: {
      book: {
        id: book.id,
        name: book.name,
        author: book.author,
        retail_price: book.retail_price
      }
    }
  end

  private
    def book_params
      params.require(:book).permit(:name, :author, :retail_price)
    end
end
