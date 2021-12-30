package com.astore.services;

import com.astore.model.Product;

import java.util.List;

public interface IProductServices {
    boolean insert(Product product);

    boolean update(Product product);

    boolean delete(int id);

    Product getById(int id);


    List<Product> getAll();


    List<Product> getByName(String productName);

    List<Product> getProductByIdCate(int idCate);

    List<Product> getProductByIdDongSp(int idDongSp);


    List<Product> getProductByIdCate(int idCate, int numTop);

    List<Product> getProductByIdDongSp(int idDongSp, int numTop);

    public List<Product> getProductByIdCate(int idCate, int start, int end);
}
