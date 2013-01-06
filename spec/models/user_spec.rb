# encoding: utf-8
require 'spec_helper'
require 'forwardable'

describe User do
	describe 'with customer role' do
		# 動的にモジュールをextendする場合
		it ".purchase" do
			customer = User.new
			customer.extend Customer

			customer.purchase(1).should == "call role purchase"
	  end

	  it ".send_back" do
	    customer = User.new
	    customer.extend Customer

	    customer.send_back(1).should == "call role send_back"
	  end
	end

	describe "With exhibitor role" do
		# Forwardableで委譲する場合
		it ".exhibit" do
		  exhibitor = User.new
		  exhibitor.delegate_role = Exhibitor.new
		  exhibitor.extend SingleForwardable
		  exhibitor.def_delegator :delegate_role, :exhibit

		  exhibitor.exhibit(SalesItem.new).should == "call role exhibit"
		end

    # 動的プロキシで委譲する場合
		it ".sales_acount" do
		  exhibitor = User.new
		  exhibitor.delegate_role = Exhibitor.new

		  exhibitor.sales_account.should == "call role sales_account"
		end
	end
end