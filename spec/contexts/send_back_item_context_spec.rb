# encoding: utf-8

require "spec_helper"

describe 'SendBackItemContext' do
	it "正しくミックスインされる" do
	  send_back_context = SendBackItemContext.new(User.new, SalesItem.new)

	  send_back_context.call.should == "call role send_back"
	end
end