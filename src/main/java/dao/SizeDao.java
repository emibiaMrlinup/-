package dao;

import entity.Size;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface SizeDao {
List<Size> getSize();

}
