require "./Factorial"

i = 0
instance = Factorial.new
while i < 10000000
  instance.native 20
  i += 1
end

puts "Native"
