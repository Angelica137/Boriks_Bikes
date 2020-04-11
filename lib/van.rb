require_relative 'bike'
require_relative 'dockingstation'

class Van
  attr_reader :bike, :broken_bikes

  def initialize
    @broken_bikes = []
    @bike = Bike.new
  end
  
  def check_broken_bike
    bike.report_broken
    if bike.broken?
      'bike is broken'
    else
      "Bike works"
    end
  end

  def collect_broken_bike
    bike.report_broken
    bikes << bike
  end

  def deliver_broken_bikes
    raise "no broken bikes today" if empty? 
    bike
  end

  def empty?
    broken_bikes == []
  end
end