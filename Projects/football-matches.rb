# Write a program to accept from the user a set of results for football team matches for
# a certain team and calculate the number points the team received. the program accepts
# the match result (won, lost or tie) as a character (w, l or t). the team receives 3 points
# for winning, one for a tie, and none for a loss. the program accepts match result until the user
# enters q to terminate the program. also display the numbers of wins, loses and ties.

win = 0
lose = 0
tie = 0
total_point = 0

puts "Enter the results of matches: "
while true
  result = gets.chomp.to_s
  if result == 'Q' or result == 'q'
    break
  elsif result == 'W' or result == 'w'
    win += 1
    total_point += 3
  elsif result == 'L' or result == 'l'
    lose += 1
  elsif result == 'T' or result == 't'
    tie += 1
    total_point += 1
  end
end

puts "the team win in #{win} matches, tie in #{tie} and lose in #{lose}."
puts "The total points he receives #{total_point}"