package com.astore.services.implemet;

import com.astore.dao.implement.SubCategoryDao;
import com.astore.model.SubCategory;
import com.astore.services.ISubCategoryServices;

import java.util.List;

public class SubCategoryServices implements ISubCategoryServices {

    private SubCategoryDao subCategoryDao;

    public SubCategoryServices() {
        subCategoryDao = new SubCategoryDao();
    }

    @Override
    public boolean insert(SubCategory subCategory) {
        return subCategoryDao.insert(subCategory);
    }

    @Override
    public boolean update(SubCategory subCategory) {
        return subCategoryDao.update(subCategory);
    }

    @Override
    public boolean delete(int id) {
        return subCategoryDao.delete(id);
    }

    @Override
    public SubCategory getById(int id) {
        return subCategoryDao.getById(id);
    }

    @Override
    public List<SubCategory> getByName(String name) {
        return subCategoryDao.getByName(name);
    }

    @Override
    public List<SubCategory> getAll() {
        return subCategoryDao.getAll();
    }
}
