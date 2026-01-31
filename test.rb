
class Item
  def weight
    @weight
  end

  def weight=(value)
    @weight = value
  end
end

apple = Item.new
apple.weight = 200  # ここで「weight=」メソッドが呼ばれている
puts apple.weight

