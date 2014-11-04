require_relative '../lib/docking_station'
require_relative '../lib/bike'
require_relative '../lib/bike_container'
require_relative '../lib/van'
require_relative '../lib/garage'

class GarageTemp; include BikeContainer; end

describe Garage do

  let(:garage) { Garage.new }
  let(:van) { double :van, dock: bike, release_to: bike, bike_count: (1) }
  let(:broken_bike) { double :bike, broken?: true}
  
end