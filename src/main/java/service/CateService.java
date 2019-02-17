package service;

import entity.Cate;

import java.util.List;

public interface CateService {
List<Cate> getCates();
public Cate QueryById(int id);
}
