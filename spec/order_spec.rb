require 'order'

describe Order do

let(:order)  {Order.new}

	it 'should have a list of dishes' do
		expect(order.dishes_choice.length).to eq (4)
	end

end