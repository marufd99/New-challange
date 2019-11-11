class OysterCard
  MIN_BALANCE = 1
  MAXIMUM_BALANCE = 90
attr_reader :balance
#attr_accessor :in_journey?
def initialize
   @balance = 0
   @in_journey = false
 end
 def top_up(amount)
   @balance += amount
   fail "Maximum balance of #{MAXIMUM_BALANCE} reached" if (@balance += amount > 90)
 end
 def deduct(amount)
   @balance += amount
 end
 
 #def touch_in
  # fail "Less the £1" if @balance < MIN_BALANCE
   #@in_journey = true
 #end
end
#end
