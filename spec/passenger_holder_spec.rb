require './lib/passenger_holder'

class Holder; include PassengerHolder; end

describe PassengerHolder do 

	let(:passenger) { double :passenger, :wallet_balance => 20 }
	let(:holder) { Holder.new }

	DEFAULT_CAPACITY = 40

	it "should initially have no passengers" do 
	 	expect(holder).to be_empty
	end

	it "should allow a passenger to enter" do
		# expect(holder.passenger_count).to eq 0
		# holder.onboard(passenger)
		# expect(holder.passenger_count).to eq 1
		expect{holder.onboard(passenger)}.to change{holder.passenger_count}.by 1
	end

	it "should allow a passenger to be released" do
		holder.onboard(passenger)
		expect{holder.release(passenger)}.to change{holder.passenger_count}.by -1
	end

	it "should know what passengers are currently there" do
		holder.onboard(passenger)
		expect(holder.passengers).to eq [passenger]
	end

end