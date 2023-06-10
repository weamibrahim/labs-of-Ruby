# #   Question 1
# puts "Enter number of times to repeat string:"
# n = gets.chomp.to_i 
# #.to_i casts to integer
# str='a'
# puts new_str=str*n
# ==================================================================================================================================
##   Question 2
# puts "Enter The string:"
# string = gets.chomp
# substring = "if"

# puts string.start_with?(substring)

# ==================================================================================================================================
##   Question 3
# puts "Enter The string:"
# string = gets.chomp

# new_string = string[-1] + string[1..-2] + string[0]

# puts new_string
# ==================================================================================================================================
##   Question 4

# puts "Enter The string:"
# string = gets.chomp
# last_character = string[-1]
# new_string = last_character + string + last_character
# puts new_string

# ==================================================================================================================================
##   Question 5
# puts "Enter the year:"
# year = gets.chomp.to_i

# leap_year = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)

# if leap_year
#   puts "#{year} is a leap year."
# else
#   puts "#{year} is not a leap year."
# end

# ==================================================================================================================================
#   Question 6
# puts "Enter an array of integers:"
# input = gets.chomp
# array = input.split.map(&:to_i)
# puts   array[1..-1] + [array[0]]
  
# ==================================================================================================================================
##   Question 7
#  puts "Enter an array of integers:"
# input = gets.chomp
# array = input.split.map(&:to_i)
# sum = 0
# skip_next = false

# array.each do |num|
#   if num == 17
#     skip_next = true
#   elsif skip_next
#     skip_next = false
#   else
#     sum += num
#   end
# end

# puts "Sum: #{sum}"
