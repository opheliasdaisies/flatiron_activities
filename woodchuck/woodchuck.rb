class Woodchuck
	attr_accessor :chuck_count

  @@woodchuck_count = 0
  @@wood_chucked = 0
  WOODCHUCKS = []

	def initialize
		@chuck_count = 0
    @@woodchuck_count += 1
    WOODCHUCKS << self
	end

	def chuck_wood
		@chuck_count += 1
    @@wood_chucked += 1
	end

  def self.woodchuck_count
    @@woodchuck_count
  end

  def self.wood_chucked
    @@wood_chucked
  end

end


def create_woodchucks
  rand(25).times { Woodchuck.new}
end

def random_chuck
  Woodchuck::WOODCHUCKS.each do |woodchuck|
    rand(100).times { woodchuck.chuck_wood }
  end
end

def randomize_woodchuck
  create_woodchucks
  random_chuck
  puts "The #{Woodchuck.woodchuck_count} woodchucks chucked #{Woodchuck.wood_chucked} pieces of wood."
end

randomize_woodchuck