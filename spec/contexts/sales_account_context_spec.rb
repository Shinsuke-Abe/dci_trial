# encoding: utf-8

require "spec_helper"

describe 'SalesAccountContext' do
	it "処理がロールに委譲される" do
	  sales_account_context = SalesAccountContext.new(User.new)

	  sales_account_context.call.should == "call role sales_account"
	end
end