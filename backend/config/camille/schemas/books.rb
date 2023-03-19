using Camille::Syntax

class Camille::Schemas::Books < Camille::Schema
  include Camille::Types

  get :hello do
    response(
      message: String
    )
  end
end