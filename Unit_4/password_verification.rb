# prompt user to enter password
def enter_pass
  print "Enter password: "
  password = gets.chomp
  return password
end

# check for symbols, push results to array
def check_for_syms(password)
  symbols =  "@%*!"
  has_syms_array = Array.new
  
  password.each_char do |char|
    has_syms_array << symbols.include?(char)
  end
  return has_syms_array
end
  
# check for numbers, push results to array
def check_for_nums(password)
  numbers =  "0123456789"
  has_nums_array = Array.new
  
  password.each_char do |char|
    has_nums_array << numbers.include?(char)
  end
  return has_nums_array
end

# checks whether password is long enough, and 
# whether it contains symbols and numbers
# if not, reprompts
def check_pass(password)

  has_syms_array = check_for_syms(password)
  has_nums_array = check_for_nums(password)

  if password.length < 8
    puts "Too short."
    password = enter_pass
    check_pass(password)

# if array doesn't include true
  elsif !(has_syms_array.include?(true)) && 
    !(has_nums_array.include?(true))
    puts "Doesn't have symbols or numbers."
    password = enter_pass
    check_pass(password)

  elsif !(has_syms_array.include?(true))
    puts "Doesn't have symbols."
    password = enter_pass
    check_pass(password)

  elsif !(has_nums_array.include?(true))
    puts "Doesn't have numbers."
    password = enter_pass
    check_pass(password)

  else
# once password meets criteria, re-enter.
# if doesn't, start over...
    print "Please re-enter password: "
    password_reenter = gets.chomp
    if password == password_reenter
      puts "Congratulations! Your password is accepted."
    else
      puts "Passwords don't match."
      password = enter_pass
      check_pass(password)
    end
  end
end

password = enter_pass
check_pass(password)