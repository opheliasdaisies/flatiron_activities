class Woodchuck
	attr_accessor :chuck_count

  @@woodchuck_count = 0
  WOODCHUCKS = []

	def initialize
		@chuck_count = 0
    @@woodchuck_count += 1
    WOODCHUCKS << self
	end

	def chuck_wood
		@chuck_count += 1
	end

  def self.woodchuck_count
    @@woodchuck_count
  end

end
