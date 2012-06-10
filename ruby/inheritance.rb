class ShoppingCart
  def initialize
    @max_items = 50
  end

  def show
    puts("in method show")
  end
end

class MiniCart < ShoppingCart
  def initialize
    super
    @max_items = 10
  end
end

if $0 == __FILE__
  MiniCart.new.show
end
