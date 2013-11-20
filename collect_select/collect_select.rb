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
		new_array << array[i] if (yield array[i])
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
			new_array << self[i] if (yield self[i])
			i += 1
		end
		new_array
	end
end