require 'oyster_card'
require 'money'

describe Money do
money = Money.new
it {expect(money).to be_instance_of(Money)}
end

describe Money do
  money = Money.new
  oyster_card = OysterCard.new
  it {expect(oyster_card.money).to eq_to(OysterCard)}
end
