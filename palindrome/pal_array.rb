# pal_array.rb
# Is an entered string a palindrome?
# The point of this version is to do it the hard way
# without using .reverse
# Created: 08/17/2015
# Modified: 08/18/2015

puts "Welcome to the palindrome test program. "
print "Enter string: "

original_string = gets.chomp

cleaned_string = original_string.gsub(/\W/, '')
cleaned_string.downcase!
chars = cleaned_string.split ""

# for i in 0..chars.length
#     puts chars[i]
# end

# puts "Debug: (chars.length/2-1) is equal to: #{(chars.length/2)-1}"
# for i in 0..(chars.length/2)-1
#  if chars[i] == chars[(chars.length-i)-1]
#      puts "It's a match on #{i}"
#  else
#      puts "No match on #{i}"
#  end
# end

is_pal = true
for i in 0..(chars.length/2)-1
 if chars[i] != chars[(chars.length-i)-1]
     is_pal = false
 end
end

if is_pal ==true
    puts "Your string is a palindrome."
else
    puts "Your string is NOT a palindrome."
end