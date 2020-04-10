require_relative 'bike'

class Van
  attr_reader :bike
  
  def collect_broken_bike
    @bike = Bike.new
    bike.report_broken
    if bike.broken? == true
      "bike is broken"
    elsif bike.broken? == false
      "Bike works"
    end
  end
end