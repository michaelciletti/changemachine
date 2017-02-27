# In: Get money in cents
# Out: Change the minimum quantity of coins
# def makechange(amount, values = VALUES)
#   change = {}  
#   values.each{|coin, value|
#     num, amount = amount.divmod(value)
#     change[coin] = num if num > 0}
#   return change
# end
 
# VALUES = {:Quarters => 25,:Dimes => 10,:Nickels =>  5,:Pennies =>  1,}

def makechange(amount) 
  values = {:Quarters => 25, :Dimes => 10, :Nickels =>  5, :Pennies =>  1,}
  total = {}  
  values.each do |coin, value|
    if amount >= value 
      coins = amount / value
      total[coin] = coins
      amount = amount - (value * coins)
    end
  end
  

  return total
end
 

 
#  def makechange(amount, values = {:Quarters => 25, :Dimes => 10, :Nickels =>  5, :Pennies =>  1,})
#  Quarters_counter = 0
#  Dimes_counter = 0
#  Nickels_counter = 0
#  Pennies_counter = 0
  

#   total = {}  
#   values.each{|coin, value|
#     num, amount = amount.divmod(value)
#     total[coin] = num if num > 0}
  

#   return {:Quarters => Quarters_counter, :dimes => Dimes_counter, :nickels => Nickels_counter, :pennies => Pennies_counter}
# end