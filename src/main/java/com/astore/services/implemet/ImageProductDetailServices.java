package com.astore.services.implemet;

import com.astore.dao.IImageProductDetailDao;
import com.astore.dao.implement.ImageProductDetailDao;
import com.astore.model.Image;

import java.util.List;

public class ImageProductDetailServices implements IImageProductDetailDao {
    private static ImageProductDetailServices imageProductDetailServices;
    private ImageProductDetailDao detailDao;

    private ImageProductDetailServices(){
        detailDao = new ImageProductDetailDao();
    }

    public static ImageProductDetailServices getInstance(){
        if(imageProductDetailServices == null){
            imageProductDetailServices = new ImageProductDetailServices();
        }
        return imageProductDetailServices;
    }

    @Override
    public boolean insert(Image image) {
        return detailDao.insert(image);
    }

    @Override
    public boolean update(Image image) {
        return detailDao.update(image);
    }

    @Override
    public boolean delete(int id) {
        return detailDao.delete(id);
    }

    @Override
    public List<Image> getByProductId(int id) {
        return detailDao.getByProductId(id);
    }

    @Override
    public Image getById(int id) {
        return detailDao.getById(id);
    }

    @Override
    public List<Image> getAll() {
        return detailDao.getAll();
    }

    @Override
    public List<Image> getByName(String imageName) {
        return detailDao.getByName(imageName);
    }
}
