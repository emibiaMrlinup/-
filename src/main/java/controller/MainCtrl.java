package controller;
import dao.CateDao;
import entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class MainCtrl {
    @Autowired
    CateService cateService;
    @Autowired
    GoodsService goodsService;
    @Autowired
    FormatService formatService;
    @Autowired
    SizeService sizeService;
    @Autowired
    CartService cartService;

    @RequestMapping("/")
    public @ResponseBody
    ModelAndView getCates() {
        List<Goods> goods = goodsService.getGoods();
        List<Cate> cates = cateService.getCates();
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("cates", cates);
        model.put("goods", goods);
        return new ModelAndView("/admin/index", model);
    }

    @RequestMapping("/getHotsPage.do")
    public ModelAndView getHots() {
        List<Goods> goods = goodsService.getGoods();
        List<Cate> cates = cateService.getCates();
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("cates", cates);
        model.put("goods", goods);
        return new ModelAndView("/admin/hots", model);
    }

    @RequestMapping("/getInThisPage.do")
    public ModelAndView getGoodsVory(@RequestParam("id") int id) {
        Cate cate = cateService.QueryById(id);
        //System.out.print("qwertyuio"+cate.getCatename());
        List<Goods> goods = goodsService.getGoods();
        List<Cate> cates = cateService.getCates();
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("cate", cate);
        model.put("cates", cates);
        model.put("goods", goods);
        return new ModelAndView("/admin/GoodVory", model);
    }

    @RequestMapping("/getInGoodsPage.do")
    public ModelAndView getInGoodsPage(@RequestParam("id") int id) {
        Goods good = goodsService.QueryById(id);
        List<Cate> cates = cateService.getCates();
        List<Format> formats = formatService.getFormat();
        List<Size> sizes = sizeService.geySize();
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("good", good);
        model.put("cates", cates);
        model.put("formats", formats);
        model.put("sizes", sizes);
        return new ModelAndView("/admin/goodsdetail", model);
    }

    @RequestMapping("/getCart.do")
    public ModelAndView getCartpage() {
        List<Cate> cates = cateService.getCates();
        List<Goods> goods = goodsService.getGoods();
        List<Cart> carts = cartService.getCarts();
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("cates", cates);
        model.put("goods", goods);
        model.put("carts",carts);
        return new ModelAndView("/admin/cart", model);
    }
    @RequestMapping("/addCart.do")
    public ModelAndView addCartGoods(int goodid, double goodsprice, int goodscount) {
        Cart c = new Cart();
        c.setGoodid(goodid);
        c.setGoodsprice(goodsprice);
        c.setGoodscount(goodscount);
        boolean yes = cartService.addCarts(c);
        Map<String, Object> model = new HashMap<String, Object>();
        List<Cate> cates = cateService.getCates();
        List<Cart> carts = cartService.getCarts();
        List<Goods> goods = goodsService.getGoods();
        model.put("carts",carts);
        model.put("cates",cates);
        model.put("goods",goods);
        return new ModelAndView("/admin/cart", model);
    }
    @RequestMapping("/deleteCart.do")
    public ModelAndView deleteCart(String id){
      boolean yes = cartService.deleteCart(id);
        Map<String, Object> model = new HashMap<String, Object>();
        List<Cate> cates = cateService.getCates();
        List<Cart> carts = cartService.getCarts();
        List<Goods> goods = goodsService.getGoods();
        model.put("carts",carts);
        model.put("cates",cates);
        model.put("goods",goods);
        return new ModelAndView("/admin/cart", model);
    }
        }
