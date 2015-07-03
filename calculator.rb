puts "=> Hello! Welcome Back :)"
loop do
  puts "Enter first number:"
  num1 = gets.chomp.to_f

  puts "Enter second number:"
  num2 = gets.chomp.to_f

  puts "=> Enter your operator:
         => (+) to Add
         => (-) to Subtract
         => (*) to Multiply
         => (/) to Divide
         "
  
  operator = gets.chomp

  case operator
  when "+"
    puts "=> The result is: #{num1 + num2}"
  when "_"
    puts "=> The result is: #{num1 - num2}"
  when "*"
    puts "=> The result is: #{num1 * num2}"
  when "/"
    puts "=> The result is: #{num1 / num2}"
  else
    puts "=> Sorry I don't understand that operation."
  end

  puts "=> Would you like to perform another operation?"

  begin
    response = gets.chomp
  end until ['y', 'yes', 'n', 'no'].include?(response)

  if ['n', 'no'].include?(response)                                           
    puts "\n=> See yaa!"
    break
  end
end
