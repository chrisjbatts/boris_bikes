require_relative '../lib/bike'

describe Bike do

  let(:bike) { Bike.new }

  it 'should be working initially' do
    expect(bike).not_to be_broken
  end

  it 'should be able to become broken' do
    bike.break!
    expect(bike).to be_broken
  end

  it 'should be able to be fixed' do
    bike.break!
    bike.fix!
    expect(bike).not_to be_broken
  end

end