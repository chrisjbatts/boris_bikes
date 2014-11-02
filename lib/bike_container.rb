module BikeContainer

  DEFAULT_CAPACITY = 10

  def initialize(options = {})
    @bikes = []
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
  end

  def bike_count
    @bikes.count
  end

  def dock(bike)
    raise "On your bike mate. No room here." if full?
    @bikes << bike
  end

  def release(bike)
    @bikes.delete(bike)
  end

  def capacity
     @bikes.count
  end

  def full?
    bike_count == @capacity
  end

  def available_bikes
    @bikes.reject { |bike| bike.broken? }
  end

end
