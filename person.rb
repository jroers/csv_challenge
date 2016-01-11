class Person
	# attr_reader :last :first :gender :DOB :color
	def initialize arr # Hingis Martina Female 4/2/1979 Green
		@last = arr[0]
		@first = arr[1]
		@gender = arr[2]
		@DOB = arr[3]
		@color = arr[4]
	end
end