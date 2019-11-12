require 'oyster_card'
# oyster_card = OysterCard.new

describe OysterCard do
  it {expect(subject).to be_instance_of(OysterCard)}

  describe '#balance' do
    it{is_expected.to respond_to(:balance)}
#  end

# oyster_card = OysterCard.new
  it {expect(subject).to respond_to(:balance)}
# oyster_card = OysterCard.new
  it {expect(subject.balance).to eq 0}

# oyster_card = OysterCard.new
  it {expect(subject).to respond_to(:top_up).with(1).argument}

  it 'expect to raise an error if over 90' do
  expect {subject.top_up(95).to raise_error ("Maximum limit reached")}
  end
#it 'expect to deduct money from oystercard' do
#  expect {(subject).to respond_to(:deduct).with(1).argument}
#end
it 'is initially not in a journey' do
  expect{(subject).not_to be(:in_journey?)}
end
 #it "can touch in" do
  #subject.touch_in
#  expect{(subject.touch_in).to be(:in_journey?)}
#end
#it "can touch out" do
#  subject.touch_in
#  subject.touch_out
#  expect(subject).not_to be(:in_journey?)
#end
it {is_expected.to respond_to(:touch_in) }
it {is_expected.to respond_to(:touch_out) }

context 'when the minimum balance limit has been reached' do
min_balance = OysterCard::MIN_BALANCE
it "raise an error limit reached " do
  subject.balance < min_balance
expect{subject.touch_in(@station)}.to raise_error("Less than £1")
end
end

it 'should update the balance with journey ' do
  expect{subject.touch_out}.to change{subject.balance}.by -1.20
end
it "remember entry station on touch in" do
      subject.top_up(30)
      subject.touch_in("Barbican")
      expect(subject.entry_station).to eq("Barbican")
end
it "clears entry station on touch out" do
    expect(subject.entry_station).to eq(nil)
end
end
end
