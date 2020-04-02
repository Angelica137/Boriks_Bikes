require_relative 'bike'

class DockingStation
  
  attr_reader :bike, :bike_stands, :capacity
  
  def initialize(capacity = 20)
    @capacity = capacity
    @bike_stands = []
  end
  
  def release_bike
      raise "There are no bikes here" if empty?
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