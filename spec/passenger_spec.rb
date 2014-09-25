require 'passenger'

describe Passenger do

	let (:train) 		{ double :train }
	let (:station) 		{ double :station }
	let (:passenger) 	{ Passenger.new }

	it "should have a wallet balance" do
		expect(passenger.balance).to_not eq 0
	end

	it "should be able to top up his oyster card balance" do
		passenger.top_up(2)
		expect(passenger.balance).to eq 22
	end

	it "should be able to be charged for a journey" do
		passenger.charged(2)
		expect(passenger.balance).to eq 18
	end

	it "should be able to show balance" do
		expect(passenger.balance).to eq 20
	end
end

=begin

1. Should be able to top up 
2.
3.

=end
	