def is_prime?(number)
  return false if number <= 1

  (2..number-1).each do |value|
    return false if number % value == 0
  end

  true
end

if ARGV.empty?
  puts "Enter а value to find the factorial"
  exit
end

begin
  value = Integer(ARGV[0])
rescue ArgumentError
  puts "Incorrect entered data"
  exit
end

puts "#{value} is prime? #{is_prime?(value)}"
