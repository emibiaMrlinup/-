package service.serviceImp;

import dao.CateDao;
import entity.Cate;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.CateService;

import java.util.List;

@Service
@Transactional
public class CateServiceImp implements CateService {
    Logger logger = Logger.getLogger(CateServiceImp.class);
    @Autowired
    CateDao cateDao;
    @Override
    public List<Cate> getCates() {
        return cateDao.getCates();
    }

    @Override
    public Cate QueryById(int id) {
        return cateDao.findById(id);
    }
}
