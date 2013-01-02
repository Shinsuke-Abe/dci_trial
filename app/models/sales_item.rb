class SalesItem < ActiveRecord::Base
  attr_accessible :name, :price, :stock

  # 詳細なトランザクションは省略
end
