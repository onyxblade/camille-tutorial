using Camille::Syntax

class Camille::Schemas::Books < Camille::Schema
  include Camille::Types

  get :hello do
    response(
      message: String
    )
  end

  post :create do
    params(
      book: Omit[Book, [:id]]
    )
    response(Boolean)
  end

  get :show do
    params(
      id: Number
    )
    response(
      book: Book
    )
  end
end