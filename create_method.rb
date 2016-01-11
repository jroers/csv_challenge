require "./person.rb"

def create_person(data)

	if data.include?(" | ")
		array = data.split(" | ")
		array[-1].gsub!("-", "/")
		array.delete_at(2)
		if array[2].downcase == "m"
			array[2] = "Male"
		elsif array[2].downcase == "f"
			array[2] = "Female"
		end
		array[-1], array[-2] = array[-2], array[-1]
	elsif data.include?(", ")
		array = data.split(", ")
		array[-1], array[-2] = array[-2], array[-1]
	else
		array = data.split
		array[-2].gsub!("-", "/")
		array.delete_at(2)
		if array[2].downcase == "m"
			array[2] = "Male"
		elsif array[2].downcase == "f"
			array[2] = "Female"
		end
	end
	person = Person.new(array)



	# person = Person.new(array)

end