class BooksController < ApplicationController
  def hello
    render json: {
      message: 'Hello World.'
    }
  end
end
