package dao;

import entity.Cate;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CateDao {
    List<Cate> getCates();
    Cate findById(int id);
}
