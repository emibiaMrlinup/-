package service.serviceImp;

import dao.CartDao;
import entity.Cart;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.CartService;

import java.util.List;
@Service
@Transactional
public class CartServiceImp implements CartService {
    Logger logger = Logger.getLogger(CartServiceImp.class);
    @Autowired
    CartDao cartDao;
    @Override
    public boolean addCarts(Cart cart) {
        cartDao.addCart(cart);
        return true;
    }

    @Override
    public boolean deleteCart(String id) {
        cartDao.deleteCart(id);
        return true;
    }

    @Override
    public List<Cart> getCarts() {
        return cartDao.getCarts();
    }
}
