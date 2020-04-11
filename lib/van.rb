require_relative 'bike'
require_relative 'dockingstation'

class Van
  attr_reader :bike, :bikes

  def initialize
    @bikes = [Bike]
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
end