require_relative 'bike'

class DockingStation
  
  attr_reader :bike, :bike_stands, :capacity
  
  def initialize
    @capacity = capacity
    @bike_stands = []
  end
  def release_bike
    if bike_stands == []
      raise "There are no bikes here"
    else
      bike
    end
  end
  
  def dock_bike(bike)
    capacity = 12
    if bike_stands.length == capacity
      raise "Docking station full"
    else
      @bike = bike
      bike_stands << bike
    end
  end

end