require_relative '../lib/docking_station'
require_relative '../lib/bike'
require_relative '../lib/bike_container'
require_relative '../lib/van'
require_relative '../lib/garage'

class VanTemp; include BikeContainer; end

describe Van do

  let(:rental_van) { Van.new(capacity: 17) }
  let(:station) { double :station }

  it 'should allow the default capacity of the van to change' do
    expect(rental_van.capacity).to eq(17)
  end

end