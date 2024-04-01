# Write a program to accept from the user 3 marks for a student out of 100 and outputs
# whether the student passed or failed. the passing grade for each subject is 40.
# the student passes if he passes in all three subjects, moreover the student also
# passes if he fails in only one subject but the average of his grades is greater than
# or equal to 50. otherwise the student fails.

# Way_one

pass = 0
failed = 0
sum = 0

puts "Enter the grades : "
list_of_grades = []

(1..3).each do |i|
  grades = gets.chomp.to_f
  list_of_grades.push(grades)
end

for grade in list_of_grades
  if grade >= 40
    pass += 1
  else
    failed += 1
  end
  sum += grade
end

if pass >= 2 and (sum / 3) >= 50
  puts "passed"
else
  puts "failed"
end


# Way_TWo

puts "Enter the grades: "
grade_1 = gets.chomp.to_f
grade_2 = gets.chomp.to_f
grade_3 = gets.chomp.to_f
if grade_1 >= 40 and grade_2 >= 40 and grade_3 >= 40
  puts "The student passed."
elsif (grade_1 >= 40 and grade_2 >= 40 and grade_3 < 40) or
  (grade_1 >= 40 and grade_2 < 40 and grade_3 >= 40) or
  (grade_1 < 40 and grade_2 >= 40 and grade_3 >= 40)
  if ((grade_1 + grade_2 + grade_3)/3 >= 50)
    puts "the student passed"
  end
  puts "the student passed"
else
  puts "the student failed."
end