require 'station'

describe Station do

	let (:train) 		{ double :train }
	let (:station) 		{ Station.new }
	let (:passenger) 	{ double :passenger }

	# it "should allow passengers to enter the station" do
	# 	station.onboard(passenger)
	# 	expect{ station.onboard(passenger) }.to change{station.passenger_count}.by 1
	# end
end