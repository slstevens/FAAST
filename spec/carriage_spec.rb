require 'carriage'

describe Carriage do

	let(:carriage) { Carriage.new } 
	let(:passenger) {double :passenger}

	def fill_carriage
		40.times { carriage.onboard(passenger) }
	end

	it "should allow a passenger to board" do
		carriage.onboard(passenger)
		expect(carriage.passenger_count).to eq 1
	end

	it "should allow a passenger to leave the carriage" do
		carriage.onboard(passenger)
		carriage.release(passenger)
		expect(carriage.passenger_count).to eq 0
	end

	it "should know how many passengers are on board" do
		3.times {carriage.onboard(passenger)}
		expect(carriage.passenger_count).to eq 3
	end

	it "should know when it's full" do
		fill_carriage
		expect(carriage).to be_full
	end

	it "should not allow the carriage to exceed capacity" do
		fill_carriage
		expect{ carriage.onboard(passenger) }.to raise_error(RuntimeError)
	end

end