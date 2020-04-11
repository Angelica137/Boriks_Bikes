require 'van'

describe Van do
  let(:bike) { double :bike }

  describe '#collect_broken_bike' do
    it { is_expected.to respond_to :collect_broken_bike }
  end
  
  it "checks if bike is broken" do
    bike = double(:bike, broken?: true)
    expect(subject.check_broken_bike).to eq 'bike is broken'
  end

  it "collects bike if broken" do
    allow(subject).to receive(:collect_broken_bike).and_return :bike
  end

  describe '#deliver_broken_bikes' do
    it { is_expected.to respond_to :deliver_broken_bikes }
  end

  it 'drops off the broken bikes' do
    broken_bikes = [:bike]
    expect(subject.deliver_broken_bikes).to eq([])
  end

  it 'raises errors if the van has no broken bikes' do
    broken_bikes = []
    expect{ subject.deliver_broken_bikes }.to raise_error "no broken bikes today"
  end

  end