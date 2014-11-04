require_relative '../lib/bike'
require_relative '../lib/bike_container'

class ContainerTemp; include BikeContainer; end

describe BikeContainer do

  let(:bike) { double :bike, broken?: false }
  let(:broken_bike) { double :bike, broken?: true }
  let(:working_bike) { double :bike, broken?: false }
  let(:holder) { ContainerTemp.new }

  def fill_up(holder)
    holder.capacity.times { holder.dock(bike) }
  end

  it 'should accept a bike' do
    expect(holder.bike_count).to eq(0)
    holder.dock(bike)
    expect(holder.bike_count).to eq(1)  
  end

  it 'should release a bike' do
    holder.dock(bike)
    holder.release(bike)
    expect(holder.bike_count).to eq(0)
  end

  it 'should know when it is full' do
    fill_up holder
    expect(holder).to be_full
  end

  it 'should not accept a bike when it is full' do
    fill_up holder
    expect(lambda { holder.dock(bike) }).to raise_error(RuntimeError)
  end

  it 'should not release a bike when none are available' do
    expect(lambda { holder.release(bike) }).to raise_error(RuntimeError)
  end

  it 'should provide a list of available bikes' do
    holder.dock(working_bike)
    holder.dock(broken_bike)
    expect(holder.available_bikes).to eq([working_bike])
  end

  it 'should provide a list of broken bikes' do
    holder.dock(working_bike)
    holder.dock(broken_bike)
    expect(holder.broken_bikes).to eq([broken_bike])
  end

end