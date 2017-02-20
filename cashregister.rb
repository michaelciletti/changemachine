# In: Get money in cents
# Out: Change the minimum quantity of coins
def makechange(amount, values = VALUES)
  change = {}  
  values.each{|coin, value|
    num, amount = amount.divmod(value)
    change[coin] = num if num > 0}
  return change
end
 
VALUES = {:Quarters => 25,:Dimes => 10,:Nickels =>  5,:Pennies =>  1,}

