require "./Factorial"

i = 0
instance = Factorial.new
while i < 10000000
  instance.inlinec 20
  i += 1
end

puts "Inline C"
