def consolidate_cart(cart)
  hash = {}
	count = 1
  cart.each do |h|
		h.each do |k, v|
  		if hash[k]
  			count +=1
  			v[:count] = count
			else
        v[:count] = 1
        hash[k] = v
  		end
    end
	end
  hash
end

def apply_coupons(cart, coupons)
 coupons.each do |coupon|
    name = coupon[:item]
    if cart[name] && cart[name][:count] >= coupon[:num]
      if cart["#{name} W/COUPON"]
      #  binding.pry
        cart["#{name} W/COUPON"][:count] += 1
      else
        cart["#{name} W/COUPON"] = {:count => 1, :price => coupon[:cost]}
        cart["#{name} W/COUPON"][:clearance] = cart[name][:clearance]
      end
      cart[name][:count] -= coupon[:num]
    end
  end
  cart

end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
