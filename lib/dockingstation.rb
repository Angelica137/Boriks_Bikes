require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20 

  attr_reader :bike, :bike_stands, :capacity
  
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bike_stands = []
  end
  
  def release_bike
      raise "There are no bikes" if empty?
      raise "Bike is broken" if bike.broken? == true
      bike
  end
  
  def dock_bike(bike)
    raise "Docking station full" if full?
    @bike = bike
    bike_stands << bike
  end

  private

  def full?
    bike_stands.length >= capacity
  end

  def empty?
    bike_stands == []
  end

end