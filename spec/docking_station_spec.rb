require_relative '../lib/docking_station'
require_relative '../lib/bike'
require_relative '../lib/bike_container'
require_relative '../lib/van'
require_relative '../lib/garage'

class DSTemp; include BikeContainer; end

describe DockingStation do

  let(:station) { double :dockingstation, :capacity => 123 }

  it 'should allow a variation from the normal capacity' do
    expect(station.capacity).to eq(123)
  end
  
end