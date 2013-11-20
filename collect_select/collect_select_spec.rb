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

end