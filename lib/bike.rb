class Bike

  def report_broken
    @broken = true
  end
  
  def broken?
    @broken
  end

  def working?
    if @broken != true
      true
    end
  end
end