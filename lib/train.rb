class Train

	attr_accessor :passengers, :capacity

	DEFAULT_CAPACITY = 40

	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@passengers = passengers
	end

	def passengers
		@passengers ||= []
	end

	def onboard(passenger)
		passengers << passenger
	end

	def passenger_count
		passengers.count
	end

	def disembark(passenger)
		passengers.pop
	end
end