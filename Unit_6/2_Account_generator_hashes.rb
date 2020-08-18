# Utilize a single array variable to store all student information
student_accounts = Array.new
# Utilize a single loop to drive the hash population 
# (you may have nested loops inside this loop for other functionality):
count = 2

count.times do 
  account = {
    name: "",
    id: 0,   
    email: "" 
  }

# accept user input for the student's name
  print "Enter student name (first and last): "
  account[:name] = gets.chomp.upcase

# generate random student ID
  account[:id] = rand(111111..999999)

# generate student email address from previous pieces of data
  split_name = account[:name].split
  account[:email] = (split_name[0][0] + split_name[1]) +
  (account[:id].to_s[-3..-1]) + 
  "@adadevelopersacademy.org"
  
  student_accounts << account 

end

# Update the printing functionality to utilize this new hash 
# variable to print out student roster
puts "STUDENT ACCOUNTS:\n ------------------------------"
puts student_accounts