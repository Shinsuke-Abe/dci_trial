# encoding: utf-8

require 'spec_helper'

describe 'ExhibitItemContext' do
	it "処理がロールに委譲される" do
	  exhibit_item_context = ExhibitItemContext.new(User.new, SalesItem.new)
	  exhibit_item_context.call.should == "call role exhibit"
	end
end