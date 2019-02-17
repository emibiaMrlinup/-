package entity;

public class Cate {
    private  String id;
    private  String catename;
    private  int classes_id;
    private  Integer parentid;
    private  String cate_decs;
    public String getCatename() {
        return catename;
    }

    public int getClasses_id() {
        return classes_id;
    }

    public Integer getParentid() {
        return parentid;
    }

    public String getCate_decs() {
        return cate_decs;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setCatename(String catename) {
        this.catename = catename;
    }

    public void setClasses_id(int classes_id) {
        this.classes_id = classes_id;
    }

    public void setParentid(Integer parentid) {
        this.parentid = parentid;
    }

    public void setCate_decs(String cate_decs) {
        this.cate_decs = cate_decs;
    }
}
