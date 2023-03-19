using Camille::Syntax

class Camille::Types::Book::Params < Camille::Type
  include Camille::Types

  alias_of Omit[Book, [:id, :created_at, :updated_at]]
end