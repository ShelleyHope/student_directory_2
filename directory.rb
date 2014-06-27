def print_header
	print "The students of my cohort:\n"
	print "--------------------------\n"
end

def input
	print "Please enter the names of the students:\n"
	print "To finish, just hit return twice.\n"
	#create an empty array:
	students = []
	#get the first name:
	name = gets.chomp
	#while the name is not empty, repeat this code:
	while !name.empty? do
		#add the student hash to the array
		students << {:name => name, :cohort => :march}
		print "Now we have #{students.length} student(s).\n"
		print "Please enter the next student name:\n"
		#get another name from the user:
		name = gets.chomp
	end
	#return the array of students
	students
end

def print_footer(students)
	print "Overall, we have #{students.length} great students\n"
end

def print_list(students)
	students.each_with_index do |student, index|
  	print "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)\n"
  end
end

print_header
students = input
print_list(students)
print_footer(students)
