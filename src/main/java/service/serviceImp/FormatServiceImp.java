package service.serviceImp;

import dao.FormatDao;
import entity.Format;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.FormatService;
import java.util.List;

@Service
@Transactional
public class FormatServiceImp implements FormatService {
    @Autowired
    FormatDao formatDao;
    @Override
    public List<Format> getFormat() {
        return formatDao.getFormat();
    }
}
