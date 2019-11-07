class OysterCard
  MAXIMUM_BALANCE = 90
attr_reader :balance
def initialize
   @balance = 0
 end
 def top_up(amount)
   @balance += amount
   fail "Maximum balance of #{MAXIMUM_BALANCE} reached" if (@balance += amount > 90)
 end
end
