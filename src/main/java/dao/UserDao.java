package dao;

import entity.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao {
    public void addUsr(User user);
    public void findUserBynameAndPass(@Param("username") String username, @Param("password")String password);
}

