class User < ActiveRecord::Base
  attr_accessor :delegate_role # ロールに委譲するための属性
  attr_accessible :mail_address, :name, :delegate_role

  # DCIアーキテクチャ適用前のモデルメソッド
  def purchase(item_id)
  	"call model purchase"
  end

  def send_back(item_id)
  	"call model send_back"
  end

  def exhibit(item)
  	"call model exhibit"
  end

  def method_missing(action, *args)
    @delegate_role.__send__(action, *args)
  end
end
