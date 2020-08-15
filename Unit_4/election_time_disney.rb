puts "\nWelcome to my election voting program.\n
Election candidates are: Donald Duck, Minnie Mouse, Goofy"

number = 10
votes = Array.new

number.times do |i|
  print "Vote #{i + 1}: "
  candidate = gets.chomp.capitalize

# fills array (votes) with candidate
  if candidate == "Donald duck" || candidate == "Donald"
    votes << "Donald Duck"
  elsif candidate == "Minnie mouse" || candidate == "Minnie"
    votes << "Minnie Mouse"
  elsif candidate == "Goofy"
    votes << "Goofy"
  else 
    votes << candidate
  end
end

counts = Hash.new(0)

# iterates through votes array to count occurance of each candidate
# populates hash (counts) with keys (candidates) and associated count
votes.each do |candidate|
  counts[candidate] += 1
end

puts "\nELECTION RESULTS...\n
Vote Summary:"

print counts
puts

winners = Array.new

# interates through counts hash
# populates winners (array) with candidates (keys) which have 
# max values (or number of votes)
counts.each do |k, v| 
  if v == counts.values.max
    winners << k
  end
end
# fence/post problem approach to write out winners
if winners.length > 1
  print "There's been a tie! The winners are "
  
  (winners.length - 2).times do |candidate|
    print winners[candidate] + ", "
  end
  print winners[-2] + " and " + winners[-1] + "!"

else 
  puts "The winner is #{winners[0]}!"
end



