def print_header
	puts "The students of my cohort:"
	puts "--------------------------"
end

def input
	puts "Please enter the names of the students:"
	puts "To finish, just hit return twice."
	#create an empty array:
	students = []
	#get the first name:
	name = gets.chomp
	#while the name is not empty, repeat this code:
	while !name.empty? do
		#add the student hash to the array
		students << {:name => name, :cohort => :march}
		puts "Now we have #{students.length} student(s)."
		puts "Please enter the next student name:"
		#get another name from the user:
		name = gets.chomp
	end
	#return the array of students
	students
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def print(students)
	students.each do |student|
  	puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

print_header
students = input
print(students)
print_footer(students)
