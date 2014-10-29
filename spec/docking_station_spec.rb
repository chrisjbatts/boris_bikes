require 'docking_station'

describe DockingStation do

  it 'is empty by default' do
    station = DockingStation.new
    expect(station.docked?).to be false
  end

  it 'can accept a bike' do
    station = DockingStation.new
    bike = Bike.new
    expect(station.bike_count).to eq(0)
    station.dock(bike)
    expect(station.bike_count).to eq(1)
  end

  it 'can release a bike' do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    expect(station.bike_count).to eq(1)
    station.undocked
    expect(station.bike_count).to eq(0)
  end

  it 'has a maximum capacity' do
    station = DockingStation.new
    bike = Bike.new
    




  end



end



# is empty by default
# accept a bike
# release a bike
# have a maximum capacity
# refuse to release broken bikes
# know the total amount of bikes

