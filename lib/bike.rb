class Bike
  
  attr_reader :condition
  
  def initialize(condition = 'working')
    @condition = condition
  end

  def working?
    true
  end
end