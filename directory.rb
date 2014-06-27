def print_header
	print "The students of my cohort:\n"
	print "--------------------------\n"
end

def input
	print "Firstly,please enter the name(s) of the student, then hit return and enter their cohort month and year (mm/yy):\n"
	print "To finish, just hit return three times.\n"
	#create an empty array:
	students = []
	acceptable_cohorts = ["11/13", "02/14", "03/14"]
	#get the first name:
	name = gets.chomp
	cohort = gets.chomp
	#while the name is not empty, repeat this code:
	while !name.empty? do
		#add the student hash to the array
		cohort = "03/14" if cohort.empty? || !acceptable_cohorts.include?(cohort)
		students << {:name => name, :cohort => cohort}
		print "Now we have #{students.length} student(s).\n"
		print "Please enter the next student name:\n"
		#get another name from the user:
		name = gets.chomp
		cohort = gets.chomp
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
  	puts "#{index+1}. #{students[index][:name]} #{students[index][:country_of_birth]}(#{students[index][:cohort]} cohort)".center(120)
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
