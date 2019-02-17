package controller;

import entity.Cate;
import entity.Goods;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.CateService;
import service.GoodsService;
import service.UserService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserCtrl {
@Autowired
UserService userService;
@Autowired
    CateService cateService;
@Autowired
    GoodsService goodsService;
@RequestMapping("/tologin.do")
public ModelAndView Tologin(){
    List<Cate> cates = cateService.getCates();
    Map<String,Object> model = new HashMap<String,Object>();
    model.put("cates",cates);
    return new ModelAndView("/admin/login",model);
}
@RequestMapping("/toReg.do")
    public ModelAndView toReg(){
    List<Cate> cates = cateService.getCates();
    Map<String,Object> model = new HashMap<String,Object>();
    model.put("cates",cates);
    return new ModelAndView("/admin/register",model);
    }
@RequestMapping("/Reg.do")
    public ModelAndView Reg(String username,String password){
    User user = new User();
    user.setUsername(username);
    user.setPassword(password);
    final String mas="注册失败";
boolean yes = userService.register(user);
    List<Cate> cates = cateService.getCates();
    Map<String,Object> model = new HashMap<String,Object>();
    model.put("cates",cates);
    model.put("mas",mas);
if(yes){
return new ModelAndView("/admin/login",model);
}else{
    return new ModelAndView("/admin/register",model);
}
}
@RequestMapping("/Login.do")
    public ModelAndView Login(String username,String password){
    userService.login(username,password);
    List<Cate> cates = cateService.getCates();
    List<Goods> goods= goodsService.getGoods();
    final String mas="登陆失败";
    Map<String,Object> model = new HashMap<String,Object>();
    model.put("cates",cates);
    model.put("goods",goods);
    model.put("name",username);
    model.put("mas",mas);
    return new ModelAndView("/admin/index",model);
}
}
