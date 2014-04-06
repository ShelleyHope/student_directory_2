puts "The students of my cohort at Makers academy"
puts "-------------------------------------------"
student_count = 19
# let's put all students into an array:
students = [
{:name => "Steve Musgrave", :cohort => :march},
{:name => "Sroop Sunar", :cohort => :march},
{:name => "Colin Marshall", :cohort => :march},
{:name => "Josh Fail-Brown", :cohort => :march},
{:name => "Louise Lai", :cohort => :march},
{:name => "Robin Doble", :cohort => :march},
{:name => "Alex Wong", :cohort => :march},
{:name => "Scott Dimmock", :cohort => :march},
{:name => "Muhanad Al-Rubaiee", :cohort => :march},
{:name => "Shelley Hope", :cohort => :march},
{:name => "Will Hall", :cohort => :march},
{:name => "Oliver Delevingne", :cohort => :march},
{:name => "Nico", :cohort => :march},
{:name => "Apostolis", :cohort => :march},
{:name => "Stefania", :cohort => :march},
{:name => "Robert Leon", :cohort => :march},
{:name => "Emma Williams", :cohort => :march},
{:name => "Joey Wolf", :cohort => :march},
{:name => "Julie Walker", :cohort => :march}
]

def print_header
	puts "The students of my cohort at Makers Academy:"
	puts "--------------------------------------------"
end

def print(student_details)
	student_details.each do |student_detail|
		puts "#{student_detail[:name]} (#{student_detail[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

#nothing happens untill we call the methods:
print_header
print(students)
print_footer(students)