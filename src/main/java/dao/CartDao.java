package dao;

import entity.Cart;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CartDao {
public void addCart(Cart cart);
public int deleteCart(String id);
List<Cart> getCarts();
}
