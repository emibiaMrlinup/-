package dao;

import entity.Goods;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface GoodsDao {
    List<Goods> getGoods();
    Goods findById(int id);
}
