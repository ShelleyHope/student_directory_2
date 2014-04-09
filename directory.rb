student_count = 6

#lets put all the students into an array:
students = [
{:name=> "David Beckham", :cohort => :march},
{:name=> "David Tennant", :cohort => :march},
{:name=> "Vincent Gallo", :cohort => :march},
{:name=> "Colin Firth", :cohort => :march},
{:name=> "Johnny Depp", :cohort => :march},
{:name=> "Dan Ariely", :cohort => :march}
]

def print_header
	puts "The Students of my cohort at Makers Academy"
	puts "-------------------------------------------"	
end

def print(students)
students.each do |student|
	puts "#{student[:name]} (#{student[:cohort]} cohort)"
end
end

def print_footer(array)
puts "Overall, we have #{array.length} great students"
end

#nothing happens until we call the methods:

print_header
print(students)
print_footer(students)

