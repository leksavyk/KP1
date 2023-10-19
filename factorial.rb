def factorial(value)
  return 1 if value == 0

  value * factorial(value - 1)
end

if ARGV.empty?
  puts "Enter the value to find the factorial"
  exit
end

begin
  value = Integer(ARGV[0])
rescue ArgumentError
  puts "Incorrect entered data"
  exit
end

if value < 0
  puts "Value < 0"
else
  result = factorial(value)
  puts "#{value}! = #{result}"
end