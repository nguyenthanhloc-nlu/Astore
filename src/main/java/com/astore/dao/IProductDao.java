package com.astore.dao;

import com.astore.model.Product;

import java.util.List;

public interface IProductDao {
    boolean insert(Product product);

    boolean edit(Product product);

    boolean delete(int id);

    Product getById(int id);
    List<Product> getAll();

    List<Product> getAll(int start,int end);

    int countProduct();


    List<Product> getByName(String productName);

    List<Product> getProductByIdCate(int idCate);

    List<Product> getProductByIdDongSp(int idDongSp);
    List<Product> getOneProductEachDongSp(int idDongSp);

    List<Product> getProductByIdCate(int idCate, int numTop);
    List<Product> getProductByIdCate(int idCate, int start, int end);

    List<Product> getProductByIdDongSp(int idDongSp, int numTop);

    List<Integer> getAllIdDongSanPhamByCategory(int idCate);


}
