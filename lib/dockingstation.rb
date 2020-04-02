require_relative 'bike'

class DockingStation
  
  attr_reader :bike, :bike_stands, :capacity
  
  def initialize(capacity = 20)
    @capacity = capacity
    @bike_stands = []
  end
  
  def release_bike
    if empty?
      raise "There are no bikes here"
    else
      bike
    end
  end
  
  def dock_bike(bike)
    if full?
      raise "Docking station full"
    else
      @bike = bike
      bike_stands << bike
    end
  end

  private

  def full?
    if bike_stands.length >= capacity
      true
    else
      false
    end
  end

  def empty?
    if bike_stands == []
      true
    else
      false
    end
  end

end