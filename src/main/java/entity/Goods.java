package entity;

public class Goods {
    private int id;
    private int tgoods;
    private int hgoods;
    private int cateid;
    private String goodsname;
    private String goodsmas;
    private String goodsprice;
    private String goodsorigin;
    private String goodspicture;
    private int goodssale;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCateid() {
        return cateid;
    }

    public void setCateid(int cateid) {
        this.cateid = cateid;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public String getGoodsmas() {
        return goodsmas;
    }

    public void setGoodsmas(String goodsmas) {
        this.goodsmas = goodsmas;
    }

    public String getGoodsprice() {
        return goodsprice;
    }

    public void setGoodsprice(String goodsprice) {
        this.goodsprice = goodsprice;
    }

    public String getGoodsorigin() {
        return goodsorigin;
    }

    public void setGoodsorigin(String goodsorigin) {
        this.goodsorigin = goodsorigin;
    }

    public String getGoodspicture() {
        return goodspicture;
    }

    public void setGoodspicture(String goodspicture) {
        this.goodspicture = goodspicture;
    }

    public int getGoodssale() {
        return goodssale;
    }

    public void setGoodssale(int goodssale) {
        this.goodssale = goodssale;
    }

    public int getTgoods() {
        return tgoods;
    }

    public void setTgoods(int tgoods) {
        this.tgoods = tgoods;
    }

    public int getHgoods() {
        return hgoods;
    }

    public void setHgoods(int hgoods) {
        this.hgoods = hgoods;
    }
}
