# Exceptions
class FakeError < StandardError; end

def divide(num, den)
  unless (num.is_a? Numeric) && (den.is_a? Numeric) then
    raise TypeError, "Your numbers should be a Numeric type."
  end
  raise ArgumentError, "Can't divide by 0, dummy!", caller if den == 0
  num/den
end

begin
  puts divide(1.0,2.0)
  puts divide(2.0, 0)     # Throws a ArgumentError
  puts divide("one", 9)   # Throws a TypeError
rescue TypeError, ArgumentError => ex
  puts "The exception #{ex.class} was thrown. #{ex.message}"
end

