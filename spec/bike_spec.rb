require 'bike'

describe Bike do
  it { is_expected.to respond_to :broken? }

  it 'lets the user report as broken' do
    bike = Bike.new
    expect(bike.report_broken).to eq(true)
  end

end