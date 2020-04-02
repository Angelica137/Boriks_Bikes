require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }

  it 'states the condition of a bike' do
    bike = Bike.new('broken')
    expect(bike.condition).to eq('broken')
  end

end