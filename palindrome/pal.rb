# pal.rb
# Is an entered string a palindrome?
# Created: 08/02/2015
# Modified: 08/02/2015

puts "Welcome to the palindrome test program. "
print "Enter string: "

original_string = gets.chomp

# debug
puts "\nYou entered: #{original_string}"

# remove all spaces and punctuation
cleaned_string = original_string.gsub(/\W/, '')
#cleaned_string = original_string.delete', .'
# debug
puts "\nThe cleaned string is: #{cleaned_string}"

# compare with .reverse version
# debug
puts "\nThe reverse is: #{cleaned_string.reverse}"
if cleaned_string.downcase == cleaned_string.reverse.downcase
    puts "\nIt IS a palindrome."
else
    puts "\nIt's NOT a palindrome."
end