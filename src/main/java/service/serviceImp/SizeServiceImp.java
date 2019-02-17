package service.serviceImp;

import dao.SizeDao;
import entity.Size;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.SizeService;

import java.util.List;

@Service
@Transactional
public class SizeServiceImp implements SizeService {
    @Autowired
    SizeDao sizeDao;
    @Override
    public List<Size> geySize() {
        return sizeDao.getSize();
    }
}
