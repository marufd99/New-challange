class OysterCard
  attr_reader :balance, :entry_station
  attr_accessor :in_journey

  CHARGE = 1.20
  MIN_BALANCE = 1
  MAXIMUM_BALANCE = 90

def initialize
   @balance = 0
   @in_journey = false
   @entry_station != nil
 end

 def top_up(amount)
   if (balance + amount > MAXIMUM_BALANCE)
   fail "Maximum balance of #{MAXIMUM_BALANCE} reached"
 end
   @balance += amount
 end


 def touch_in(station)
   fail "Less than £1" if @balance < MIN_BALANCE
   @in_journey = true
   @entry_station = station
 end
 def touch_out
   deduct(CHARGE)
   @in_journey = false
   @entry_station = nil
 end


 private


def deduct(amount)
  @balance -= amount
end
end
