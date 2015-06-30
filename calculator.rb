puts "Hello! Welcome Back :)
\nWould you like to conduct a calculation 'Type yes or no')?"
reply = gets.chomp.downcase

unless reply != "no"
  abort("That's okay, you'll be back ;)")
end

loop do 
  while true 
    puts "\n=> What would you like to do?
  => Type '1' to Add
  => Type '2' to Subtract
  => Type '3' to Multiply
  => Type '4' to Divide
"
answer = gets.chomp
puts "\n=> What's the first number?"
num1 = gets.chomp
puts "\n=> What's the second number?"
num2 = gets.chomp

case answer
when '1'
  operation = num1.to_i + num2.to_i
  break
when '2'
  operation = num1.to_i - num2.to_i
  break
when '3'
  operation = num1.to_i * num2.to_i
  break
when '4'
  operation = num1.to_f / num2.to_f
  break
else 
  puts "\nSorry I can't perform that action, please input one of the four."
  end
end

puts "\n=> The answer is: #{operation}"

puts "\n=> Would you like to perform another calculation?"
begin
    response = gets.chomp
  end until ['y', 'yes', 'n', 'no'].include?(response)

  if ['n', 'no'].include?(response)                                           
    puts "\n=> See yaa!"
    break
  end
end