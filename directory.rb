def print_header
	print "The students of my cohort:\n"
	print "--------------------------\n"
end

def input
	print "Firstly,please enter the name(s) of the student, then hit return and enter their country of birth:\n"
	print "To finish, just hit return three times.\n"
	#create an empty array:
	students = []
	#get the first name:
	name = gets.chomp
	country_of_birth = gets.chomp
	#while the name is not empty, repeat this code:
	while !name.empty? do
		#add the student hash to the array
		students << {:name => name, :country_of_birth => country_of_birth, :cohort => :march}
		print "Now we have #{students.length} student(s).\n"
		print "Please enter the next student name:\n"
		#get another name from the user:
		name = gets.chomp
		country_of_birth = gets.chomp
	end
	#return the array of students
	students
end

def print_footer(students)
	print "Overall, we have #{students.length} great students\n"
end

def print_list(students)
	index = 0
	n = students.length
	while index < n
  	print "#{index+1}. #{students[index][:name]} #{students[index][:country_of_birth]}(#{students[index][:cohort]} cohort)\n"
  	index+=1
  end
end

def letter_a(students)
	students.select do |student|
		student[:name].chars.first == "A"
	end
end

def name_length(students)
	students.select do |student|
		student[:name].length < 12
	end
end

print_header
students = input
# students = letter_a(students)
students = name_length(students)
print_list(students)
print_footer(students)
