# An array that will contain student names
names = Array.new
# An array that will store student ID numbers
ids = Array.new
# An array that will contain student email addresses
emails = Array.new

count = 5

# times loop that asks for 5 student names 
count.times do
  print "Enter student name (first and last): "
  names << gets.chomp.upcase
end

# times loop to generate random student ID numbers 
# from 111111 to 999999
# put these values to the student ID number array.
count.times { ids << rand(111111..999999) }

# times loop to generate student email addresses
emails = Array.new

count.times do |i|
  email = ""

# format: (first inital)+(last name)+
  split_name = names[i].split
  email << split_name[0][0] + split_name[1]

# (last 3 digits of student ID number)
  email << ids[i].to_s[-3..-1]

# @adadevelopersacademy.org
  email << "@adadevelopersacademy.org"
  emails << email

end

puts "STUDENT ACCOUNTS:\n ------------------------------"
count.times do |i|
  puts names[i] + " | " + ids[i].to_s + " | " + emails[i]
  
end