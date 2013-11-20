#Implement your own versions of collect and select
 
def my_collect(array)
	i = 0
	new_array = []
	while i < array.length
		x = yield array[i]
		new_array << x
		i += 1
	end
	new_array
end
 
def my_select(array)
#
end
 
#CHALLENGE:
#Implement these methods as instance methods on the array class.