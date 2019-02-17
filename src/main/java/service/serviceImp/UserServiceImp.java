package service.serviceImp;

import dao.UserDao;
import entity.User;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.UserService;

@Service
@Transactional
public class UserServiceImp implements UserService {
    Logger logger = Logger.getLogger(UserServiceImp.class);
    @Autowired
    UserDao userDao;

    @Override
    public boolean register(User user) {
        userDao.addUsr(user);
        return true;
    }

    @Override
    public void login(String username, String password) {
    userDao.findUserBynameAndPass(username,password);
    }
}
