package com.niit.Service;

import com.niit.Beans.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
