require 'van'

describe Van do
  let(:bike) { double :bike }

  describe '#collect_broken_bike' do
    it { is_expected.to respond_to :collect_broken_bike }
  end
  
  it "checks if bike is broken" do
    bike = double(:bike, broken?: true)
    expect(subject.collect_broken_bike).to eq 'bike is broken'
  end

  it "collects bike if broken" do
    bike = double(:bike, broken?: true)
    expect(subject.collect_broken_bike(bike)).to eq ([bike])
  end
end