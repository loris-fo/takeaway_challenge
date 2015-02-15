require 'order'

describe Order do

let(:order)  {Order.new}

	it 'should have a list of dishes' do
		expect(order.dishes_choice.length).to eq (4)
	end

	it 'should set the order items to 0' do
		expect(order.order_count).to eq (0)
	end

end