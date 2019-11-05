require 'oyster_card'

describe OysterCard do
  oyster_card = OysterCard.new
  it {expect(oyster_card).to be_instance_of(OysterCard)}
end
