require_relative 'passenger_holder'

class Carriage

	include PassengerHolder

	DEFAULT_CAPACITY = 40

	def onboard(passenger)
		raise "No more room" if full?
		@passengers << passenger
	end

	def release(passenger) #is this necessary? Release is already in PassengerHolder
		passengers.pop
	end
end