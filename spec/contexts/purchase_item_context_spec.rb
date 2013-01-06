# encoding: utf-8

require "spec_helper"

describe "PurchaseItemContext" do
  it "正しくミックスインされる" do
    purchase_context = PurchaseItemContext.new(User.new, SalesItem.new)

    purchase_context.call.should == "call role purchase"
  end
end