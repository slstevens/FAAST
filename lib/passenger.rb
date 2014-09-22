class Passenger 

	attr_accessor :balance

	DEFAULT_BALANCE = 20

	def initialize(option = {})
		@balance = option.fetch(:balance, DEFAULT_BALANCE)
	end

	def top_up(amount)
		@balance += amount
	end

	def charged(amount)
		@balance -= amount
	end

end