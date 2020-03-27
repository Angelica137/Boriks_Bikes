require 'dockingstation'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }
  
  it 'releases a bike from the docking station' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to :dock_bike }
  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  it 'accepts a bike from a user and stores it' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq('docked bike')
  end

  it { is_expected.to respond_to :bike? }
end