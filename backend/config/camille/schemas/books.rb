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
      book: {
        name: String,
        author: String,
        retail_price: Decimal
      }
    )
    response(Boolean)
  end
end