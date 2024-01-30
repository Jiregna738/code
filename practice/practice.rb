# hobbies = ["Reading", "Watching"]
# num= (5..10)

# def profile_info
#   name = "Jiregna"
#   age = 31

#   puts  "my name is #{name}"
#  puts "I am #{age} years old"
# end
# profile_info
list_of_careers = ["Developer", "Program Manager", "Designer"]
def list_careers(careers)
  careers.each do |career|
    puts career.reverse.capitalize
  end
end
list_careers(list_of_careers)
