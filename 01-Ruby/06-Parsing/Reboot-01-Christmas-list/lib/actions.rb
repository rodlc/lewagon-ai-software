# TODO: you can build your christmas list actions here!

def add(wishlist, gift)
  wishlist << { name: gift, status: false }
end

def delete(wishlist, gift)
  wishlist.each do |h|
    wishlist.delete(h) if h[:name] == gift
  end
end

def mark(wishlist, gift)
  wishlist.each do |i|  
    h[:status] = true if h[:name] == gift
  end
end
