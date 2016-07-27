# make factors 2-decimal place to set precision past integer
# 5/9 == 0 but 5.0/9 == 0.5555555555
def ftoc (farrenheit)
  return ((farrenheit - 32) * 5.00 / 9.00)
end

def ctof (celsius)
  return (celsius * 9.00 / 5.00 + 32)
end
