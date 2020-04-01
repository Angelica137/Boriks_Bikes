require_relative 'bike'

class DockingStation
  
  attr_reader :bike, :bike_stands
  def initialize
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
    @bike = bike
    bike_stands << bike
  end

end