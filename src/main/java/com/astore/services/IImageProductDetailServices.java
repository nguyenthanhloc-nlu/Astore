package com.astore.services;

import com.astore.model.Image;

import java.util.List;

public interface IImageProductDetailServices {
    boolean insert(Image image);

    boolean update(Image image);

    boolean delete(int id);

    List<Image> getByProductId(int id);

    Image getById(int id);

    List<Image> getAll();

    List<Image> getByName(String imageName);
}
