package service;

import entity.Cart;

import java.util.List;

public interface CartService {
    public boolean addCarts(Cart cart);
    public boolean deleteCart(String id);
    List<Cart> getCarts();
}
