class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.count 
    # .length 
    # .size
  end 

  def find_soda(soda_brand)
    @sodas.find { |soda| soda.brand == soda_brand } 
    # .detect 
  end 

  def sell(soda_brand)
    sell_soda = find_soda(soda_brand)
    return nil if sell_soda == nil
    @cash += sell_soda.price
    @sodas.delete(sell_soda)
  end 

end 
