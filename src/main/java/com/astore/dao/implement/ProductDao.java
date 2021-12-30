package com.astore.dao.implement;

import com.astore.dao.IProductDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ProductDao implements IProductDao {

    @Override
    public boolean insert(Product product) {


        return false;
    }

    @Override
    public boolean edit(Product product) {



        return false;
    }

    @Override
    public boolean delete(int id) {

        return false;
    }

    @Override
    public Product getById(int id) {
        Connection conn = ConnectDB.getInstance();
        String sql = "SELECT SAN_PHAM.*, GIAM_GIA.phan_tram, MAU_SAC.ten_mau_sac, MAU_SAC.ma_mau_sac_hex, DONG_SAN_PHAM.ten_dong_san_pham " +
                "FROM SAN_PHAM join GIAM_GIA on SAN_PHAM.id = GIAM_GIA.id_san_pham join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac " +
                "join DONG_SAN_PHAM on DONG_SAN_PHAM.id = SAN_PHAM.id_dong_san_pham " +
                "where SAN_PHAM.id = " + id;

        try {

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                setValueProduct(product, rs);
                product.setListPhotoUrl(getLinkPhotoProduct(conn, product.getId()));
                product.setListProductDetail(getLinkDetailProduct(conn, product.getId()));
                ps.close();
                rs.close();
                return product;
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }


    @Override
    public List<Product> getAll() {
        List<Product> products = new ArrayList<Product>();
        Connection conn;
        conn = ConnectDB.getInstance();
        String sql = "SELECT SAN_PHAM.*, GIAM_GIA.phan_tram, MAU_SAC.ten_mau_sac, MAU_SAC.ma_mau_sac_hex, DONG_SAN_PHAM.ten_dong_san_pham , HINH_MOTA_SANPHAM.link_hinh_mo_ta_san_pham" +
                "FROM SAN_PHAM join GIAM_GIA on SAN_PHAM.id = GIAM_GIA.id_san_pham join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac " +
                "join DONG_SAN_PHAM on DONG_SAN_PHAM.id = SAN_PHAM.id_dong_san_pham join HINH_MOTA_SANPHAM on SAN_PHAM.id = HINH_MOTA_SANPHAM.id_san_pham";


        try {

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                setValueProduct(product, rs);
                product.setListPhotoUrl(getLinkPhotoProduct(conn, product.getId()));
                product.setListProductDetail(getLinkDetailProduct(conn, product.getId()));
                products.add(product);
            }
            ps.close();
            rs.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }


    @Override
    public List<Product> getByName(String productName) {
        List<Product> products = new ArrayList<Product>();
        Connection conn = ConnectDB.getInstance();
        String sql = "SELECT SAN_PHAM.*, GIAM_GIA.phan_tram, MAU_SAC.ten_mau_sac, MAU_SAC.ma_mau_sac_hex, DONG_SAN_PHAM.ten_dong_san_pham , HINH_MOTA_SANPHAM.link_hinh_mo_ta_san_pham" +
                "FROM SAN_PHAM join GIAM_GIA on SAN_PHAM.id = GIAM_GIA.id_san_pham join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac " +
                "join DONG_SAN_PHAM on DONG_SAN_PHAM.id = SAN_PHAM.id_dong_san_pham join HINH_MOTA_SANPHAM on SAN_PHAM.id = HINH_MOTA_SANPHAM.id_san_pham" +
                "where DONG_SAN_PHAM.ten_dong_san_pham =" + productName;


        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                setValueProduct(product, rs);
                product.setListPhotoUrl(getLinkPhotoProduct(conn, product.getId()));
                product.setListProductDetail(getLinkDetailProduct(conn, product.getId()));
                products.add(product);
            }
            ps.close();
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    @Override
    public List<Product> getProductByIdCate(int idCate) {
        List<Product> products = new ArrayList<Product>();
        Connection conn = ConnectDB.getInstance();
        String sql = "SELECT SAN_PHAM.*, GIAM_GIA.phan_tram, MAU_SAC.ten_mau_sac, MAU_SAC.ma_mau_sac_hex, DONG_SAN_PHAM.ten_dong_san_pham " +
                "FROM SAN_PHAM join GIAM_GIA on SAN_PHAM.id = GIAM_GIA.id_san_pham join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac " +
                "join DONG_SAN_PHAM on SAN_PHAM.id_dong_san_pham = DONG_SAN_PHAM.id join LOAI_SAN_PHAM on LOAI_SAN_PHAM.id = DONG_SAN_PHAM.id_loai_san_pham " +
                "where LOAI_SAN_PHAM.id =" + idCate;


        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                setValueProduct(product, rs);
                product.setListPhotoUrl(getLinkPhotoProduct(conn, product.getId()));
                product.setListProductDetail(getLinkDetailProduct(conn, product.getId()));
                products.add(product);
            }
            ps.close();
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        Collections.shuffle(products);
        return products;
    }

    @Override
    public List<Product> getProductByIdDongSp(int idDongSp) {
        List<Product> products = new ArrayList<Product>();
        Connection conn = ConnectDB.getInstance();
        String sql = "SELECT  SAN_PHAM.*, GIAM_GIA.phan_tram, MAU_SAC.ten_mau_sac, MAU_SAC.ma_mau_sac_hex, DONG_SAN_PHAM.ten_dong_san_pham " +
                "FROM SAN_PHAM join GIAM_GIA on SAN_PHAM.id = GIAM_GIA.id_san_pham join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac " +
                "join DONG_SAN_PHAM on SAN_PHAM.id_dong_san_pham = DONG_SAN_PHAM.id " +
                "where DONG_SAN_PHAM.id =" + idDongSp;


        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                setValueProduct(product, rs);
                product.setListPhotoUrl(getLinkPhotoProduct(conn, product.getId()));
                product.setListProductDetail(getLinkDetailProduct(conn, product.getId()));
                products.add(product);

            }
            ps.close();
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;

    }

    @Override
    public List<Product> getOneProductEachDongSp(int idDongSp) {
        List<Integer> result = getAllIdDongSanPhamByCategory(1);
        for (Integer i:result){

        }
        return  null;
    }

    @Override
    public List<Product> getProductByIdCate(int idCate, int numTop) {
        List<Product> products = new ArrayList<Product>();
        Connection conn = ConnectDB.getInstance();

        List<Integer> result = getAllIdDongSanPhamByCategory(idCate);
        int len = (numTop > result.size()) ? result.size() : numTop;

        for (int i = 0; i < len; i++) {
            products.addAll(getProductByIdDongSp(result.get(i), 1)) ;
        }
        return products;
    }

    @Override
    public List<Product> getProductByIdCate(int idCate, int start, int end) {
        List<Product> products = new ArrayList<Product>();
        Connection conn = ConnectDB.getInstance();
        String sql = "execute getProductLimit_proc "+idCate +", "+start+ ", "+end;

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Product product = new Product();

                setValueProduct(product, rs);

                product.setListPhotoUrl(getLinkPhotoProduct(conn, product.getId()));
                product.setListProductDetail(getLinkDetailProduct(conn, product.getId()));
                products.add(product);
            }
            rs.close();
            ps.close();
            conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }


        return  products;
    }

    @Override
    public List<Product> getProductByIdDongSp(int idDongSp, int numTop) {
        List<Product> products = new ArrayList<Product>();
        Connection conn = ConnectDB.getInstance();
        String sql = "SELECT top " + numTop + " SAN_PHAM.*, GIAM_GIA.phan_tram, MAU_SAC.ten_mau_sac, MAU_SAC.ma_mau_sac_hex, DONG_SAN_PHAM.ten_dong_san_pham " +
                "FROM SAN_PHAM join GIAM_GIA on SAN_PHAM.id = GIAM_GIA.id_san_pham join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac " +
                "join DONG_SAN_PHAM on SAN_PHAM.id_dong_san_pham = DONG_SAN_PHAM.id " +
                "where DONG_SAN_PHAM.id =" + idDongSp;


        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();

                setValueProduct(product, rs);

                product.setListPhotoUrl(getLinkPhotoProduct(conn, product.getId()));
                product.setListProductDetail(getLinkDetailProduct(conn, product.getId()));
                products.add(product);
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    @Override
    public List<Integer> getAllIdDongSanPhamByCategory(int idCate) {
        List<Integer> result = new ArrayList<Integer>();
        Connection conn = ConnectDB.getInstance();
        String sql = "select DONG_SAN_PHAM.id from DONG_SAN_PHAM where id_loai_san_pham = "+idCate;


        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                result.add(rs.getInt("id"));
            }
            ps.close();
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(result.size());
        return result;
    }

    private List<String> getLinkPhotoProduct(Connection conn, int id) {

        List<String> photoUrl = new ArrayList<>();
        try {
            String sql = "select link_hinh_san_pham from HINH_SANPHAM where id_san_pham = " + id;
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                photoUrl.add(rs.getString("link_hinh_san_pham"));
            }
            ps.close();
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return photoUrl;
    }

    private List<String> getLinkDetailProduct(Connection conn, int id) {

        List<String> photoUrl = new ArrayList<>();
        try {
            String sql = "select link_hinh_mo_ta_san_pham from HINH_MOTA_SANPHAM where id_san_pham = " + id;
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                photoUrl.add(rs.getString("link_hinh_mo_ta_san_pham"));
            }
            ps.close();
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return photoUrl;
    }

    private void setValueProduct(Product product, ResultSet rs) {
        try {
            product.setId(rs.getInt("id"));
            product.setSubCategoryId(rs.getInt("id_dong_san_pham"));
            product.setName(rs.getString("ten_dong_san_pham"));
            product.setPrice(rs.getDouble("gia_san_pham"));
            product.setColorName(rs.getString("ten_mau_sac"));
            product.setColorHex(rs.getString("ma_mau_sac_hex"));
            product.setRom(rs.getString("bo_nho_rom"));
            product.setRam(rs.getString("ram"));
            product.setSizeScreen(rs.getString("kich_thuoc_man_hinh"));
            product.setScreenResolution(rs.getString("do_phan_giai_man_hinh"));
            product.setFrontCamera(rs.getString("camera_truoc"));
            product.setBackCamera(rs.getString("camera_sau"));
            product.setSaleRate(rs.getDouble("phan_tram"));
            product.setCreatedAt(rs.getString("thoi_gian_tao"));
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
