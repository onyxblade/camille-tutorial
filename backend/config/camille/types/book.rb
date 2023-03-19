using Camille::Syntax

class Camille::Types::Book < Camille::Type
  include Camille::Types

  alias_of(
    id: Number,
    name: String,
    author: String,
    retail_price: Decimal,
    created_at: DateTime,
    updated_at: DateTime
  )
end