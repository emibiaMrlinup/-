package api;


import com.alibaba.fastjson.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.databind.util.JSONPObject;
import entity.Goods;
import net.sf.json.util.JSONUtils;
import org.mortbay.util.ajax.JSONObjectConvertor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.GoodsService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/goods")
public class APICtrl {
    @Autowired
    GoodsService goodsService;


    @ResponseBody
    @RequestMapping("/lll")
    public String getgoods() {
        List<Goods> goodsLIst = goodsService.getGoods();
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("goods", goodsLIst);
        JSONArray list = JSONArray.fromObject(goodsLIst);

        if (list.size() > 0) {
            for (int i = 0; i < list.size(); i++) {
                // 遍历 jsonarray 数组，把每一个对象转成 json 对象
                JSONObject job = list.getJSONObject(i);

            }

        }
        return list.toString();
    }
}