package service;

import entity.User;

public interface UserService {

    //用户注册
   public boolean register(User user);
    //用户登录
   public void login(String name, String password);

}
