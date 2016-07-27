#write your code here
def add (a, b)
  return a + b
end

def subtract (a, b)
  return a - b
end

def sum (a)
  total = 0
  a.each {|x| total+=x}
  return total
end

def multiply (*p)
  product = 1
  p.each {|x| product *= x}
  return product
end

def power (a,b)
  result = 1
  b.times do
    result *= a
  end
  return result
end

def factorial (p)
  product = 1
  if p > 0
    p.times do
      product *= p
      p -= 1
    end
  end
  return product
end
