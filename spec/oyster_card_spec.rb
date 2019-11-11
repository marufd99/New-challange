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
it 'expect to deduct money from oystercard' do
  expect {(subject).to respond_to(:deduct).with(1).argument}
end
it 'is initially not in a journey' do
  expect{(subject).not_to be(:in_journey?)}
end
 it "can touch in" do
  subject.touch_in
  expect{(subject.touch_in).to be(:in_journey?)}
end
it "can touch out" do
  subject.touch_in
  subject.touch_out
  expect(subject).not_to be(:in_journey?)
end
context 'when the minimum balance limit has been reached'
min_balance = OysterCard::MIN_BALANCE
it "raise an error, limit reached " do
  subject.balance < min_balance
  expect {subject.touch_in }.to raise_error("Less then 1")

end
end
