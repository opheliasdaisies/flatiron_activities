require "./collect_select"

describe "#my_collect" do
	it "should iterate through an array, do something to each element of the array, and return the new array." do
		expect(my_collect([1,2,3,4,5]) {|item| item *2 }).to eq([2,4,6,8,10])
	end
	it "should iterate through an array, do something to each element of the array, and return the new array." do
		expect(my_collect(["one","two","three"]){|item| "#{item}, yo!"}).to eq(["one, yo!", "two, yo!", "three, yo!"])
	end
end

describe "#my_select" do
	it "should iterate through an array, and return all elements which meet a given condition." do
		expect(my_select([1,2,3,4,5,6]){|item| item.even?}).to eq([2,4,6])
	end
	it "should iterate through an array, and return all elements which meet a given condition." do
		expect(my_select([32,42,35,23,52,52,34,17,69]){|item| item > 35}).to eq([42,52,52,69])
	end
end


describe Array, "#my_collect" do
	it "should iterate through an array, do something to each element of the array, and return the new array." do
		expect([1,2,3,4,5].my_collect {|item| item *2 }).to eq([2,4,6,8,10])
	end
	it "should iterate through an array, do something to each element of the array, and return the new array." do
		expect(["one","two","three"].my_collect {|item| "#{item}, yo!"}).to eq(["one, yo!", "two, yo!", "three, yo!"])
	end
end

describe "#my_select" do
	it "should iterate through an array, and return all elements which meet a given condition." do
		expect([1,2,3,4,5,6].my_select{|item| item.even?}).to eq([2,4,6])
	end
	it "should iterate through an array, and return all elements which meet a given condition." do
		expect([32,42,35,23,52,52,34,17,69].my_select {|item| item > 35}).to eq([42,52,52,69])
	end
end