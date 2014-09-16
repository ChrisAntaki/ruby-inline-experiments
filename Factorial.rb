require "inline"

class Factorial
  def native(n)
    f = 1
    n.downto(2) { |x| f *= x }
    f
  end

  inline :C do |builder|
    builder.c "
    long inlinec(long max) {
      long i=max, result=1;
      while (i >= 2) { result *= i--; }
      return result;
    }"
  end
end
