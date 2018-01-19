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


end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
