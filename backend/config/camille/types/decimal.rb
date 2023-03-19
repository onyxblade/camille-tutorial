using Camille::Syntax

class Camille::Types::Decimal < Camille::Type
  include Camille::Types

  alias_of(String)

  # transforms a BigDecimal into a Float so it fits in Number type
  def transform value
    if value.is_a? BigDecimal
      value.to_s
    else
      value
    end
  end
end