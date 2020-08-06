#multiplication
def multiply(x, y)
  x * y
end
#division
def divide(numerator, denominator)
  return numerator.to_f / denominator.to_f
end
#subtraction 
def subtract(x, y)
  x - y 
end
#addition
def add(x, y)
  x + y
end
#mod
def mod(x, y)
  x % y
end

user_input = "-1"
num_1 = 0.0
num_2 = 0.0
input_dict = {
  "0" => "to quit",
  "1" => "Multiplication",
  "2" => "Division",
  "3" => "Subtraction",
  "4" => "Addition",
  "5" => "Modulo"
}

puts "Simple Calculator"
25.times {print "-" }
puts
until user_input == "0" do
  puts "What do you want to do?"
  puts "Enter 1 for multiplication, 2 for division, 3 for subtraction, 4 for addition, 5 for mod. Enter 0 to quit."
  user_input = gets.chomp.downcase
  choice = input_dict[user_input]
  choice = choice.downcase
  puts "You chose #{choice}!"
  if user_input != "0"
    puts "Enter your first number"
    num_1 = gets.chomp.to_i
    puts "Enter your second number"
    num_2 = gets.chomp.to_i
  end

  case user_input
  when "1"
    puts "#{num_1} x #{num_2} = #{multiply(num_1, num_2)}"
  when "2"
    puts "#{num_1} / #{num_2} = #{divide(num_1, num_2)}"
  when "3"
    puts "#{num_1} - #{num_2} = #{subtract(num_1, num_2)}"
  when "4"
    puts "#{num_1} + #{num_2} = #{add(num_1, num_2)}"
  when "5"
    puts "#{num_1} % #{num_2} = #{mod(num_1, num_2)}"
  else
    "Error: Please enter a number between 1 and 5. Enter 0 to quit."
  end
end
