package service.serviceImp;

import dao.GoodsDao;
import entity.Goods;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.GoodsService;

import java.util.List;

@Service
@Transactional
public class GoodsServiceImp implements GoodsService {
    Logger logger = Logger.getLogger(GoodsServiceImp.class);

    @Autowired
    GoodsDao goodsDao;

    @Override
    public List<Goods> getGoods() {
        return goodsDao.getGoods();
    }

    @Override
    public Goods QueryById(int id) {
        return goodsDao.findById(id);
    }
}
