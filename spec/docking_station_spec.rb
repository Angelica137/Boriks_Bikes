require 'dockingstation'

describe DockingStation do

  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }
  
    it 'releases a bike from the docking station' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.release_bike).to eq(bike)
    end
  end
  
  it 'confirms if the bike is working' do
    bike = Bike.new
    subject.dock_bike(bike)
    subject.release_bike
    expect(bike).not_to be_broken
  end
  
  it { is_expected.to respond_to :dock_bike }
  it { is_expected.to respond_to(:dock_bike).with(1).argument }

  describe "#dock_bike" do
    it 'accepts a bike from a user and stores it' do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq([bike])
    end
  end
  
  describe "#release_bike" do
    it 'tells the user if there is a bike in the docking station' do
      bike_stands = []
      expect{ subject.release_bike }.to raise_error "There are no bikes"
    end
  end

  describe "#dock_bike" do
    it 'prevents docking bikes above capacity' do
      subject.capacity.times { subject.dock_bike double :bike }
      expect{ subject.dock_bike double :bike }.to raise_error "Docking station full"
    end
  

    it 'states the default capacity of a docking station' do
      DockingStation::DEFAULT_CAPACITY.times do
        expect(subject.capacity).to eq 20
      end
    end

    it 'states the capacity of a docking station' do
      d = DockingStation.new(100)
      expect(d.capacity).to eq 100
    end
  end 

  describe '#release_bike' do
    it 'prevents broken bike being released' do
      d = DockingStation.new
      bike = Bike.new
      bike.report_broken
      d.dock_bike(bike)
      expect{ d.release_bike }.to raise_error "Bike is broken"
    end
  end
end