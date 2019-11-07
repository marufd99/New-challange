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
#it 'expect to have an limit of 90' do
#  expected {}
end

#describe OysterCard do
#  oyster_card = OysterCard.new
#it {expect(oyster_card.top_up)}.to eq(90)}
#end
#  it {expect(oyster_card.money).to respond_to(:top_up).with(1).argument}
#end
