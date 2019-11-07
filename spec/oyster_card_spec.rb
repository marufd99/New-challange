require 'oyster_card'
# oyster_card = OysterCard.new

describe OysterCard do
  it {expect(subject).to be_instance_of(OysterCard)}

# oyster_card = OysterCard.new
  it {expect(subject).to respond_to(:balance)}
# oyster_card = OysterCard.new
  it {expect(subject.balance).to eq 0}

# oyster_card = OysterCard.new
  it {expect(subject).to respond_to(:top_up).with(1).argument}

  it 'expect to raise an error if over 90' do
  expect {subject.top_up(95).to raise_error ("Maximum limit reached")}
  end

end
