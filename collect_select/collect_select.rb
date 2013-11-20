#Implement your own versions of collect and select
 
def my_collect(array)
	i = 0
	new_array = []
	while i < array.length
		new_array << (yield array[i])
		i += 1
	end
	new_array
end
 
def my_select(array)
	i = 0
	new_array = []
	while i < array.length
		x = yield array[i]
		if x == true
			new_array << array[i]
		end
		i += 1
	end
	new_array
end
 
#CHALLENGE:
#Implement these methods as instance methods on the array class.

class Array
	def my_collect
		i = 0
		new_array = []
		while i < self.length
			new_array << (yield self[i])
			i += 1
		end
		new_array
	end
	 
	def my_select
		i = 0
		new_array = []
		while i < self.length
			x = yield self[i]
			if x == true
				new_array << self[i]
			end
			i += 1
		end
		new_array
	end
end