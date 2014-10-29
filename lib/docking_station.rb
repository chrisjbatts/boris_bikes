class DockingStation

  def initialize
    undocked
  end

  def undocked
    @docked = false
    @bike_count = 0
  end

  def docked?
    @docked
  end

  def docked!
    @docked = true
    @bike_count = 1
  end

#bike shit below here

  def dock(bike)
    docked!
  end

  def bike_count
    @bike_count
  end




  # bike_count

  # @bike

end