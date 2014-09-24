require 'train'

describe Train do

	let (:train) 		{ Train.new }
	let (:station) 		{ double :station }
	let (:passenger) 	{ double :passenger }

	it "should be able to onboard passengers" do
		expect{ train.onboard(passenger) }.to change{train.passenger_count}.by 1
	end

	it "should be able to disembark passengers" do
		train.onboard(passenger)
		expect{ train.disembark(passenger) }.to change{train.passenger_count}.by -1
	end

	it "should know what passengers are currently there" do
		train.onboard(passenger)
		expect(train.passengers).to eq [passenger]
	end
end