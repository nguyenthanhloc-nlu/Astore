package com.astore.dao.implement;

import com.astore.dao.IProductDao;
import com.astore.jdbc.ConnectDB;
import com.astore.model.Product;

import java.math.BigDecimal;
import java.sql.*;
import java.sql.Date;
import java.util.*;

public class ProductDao implements IProductDao {

    @Override
    public boolean insert(Product product) {
        if (product != null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "insert into San_pham(id_dong_san_pham, gia_san_pham, id_mau_sac, bo_nho_rom, ram,kich_thuoc_man_hinh, do_phan_giai_man_hinh, camera_truoc, camera_sau ) values (?,?,?,?,?,?,?,?,?)";


            PreparedStatement ps = null;
            try {
                ps = conn.prepareStatement(sql);
                ps.setInt(1, product.getSubCategoryId());
                ps.setDouble(2, product.getPrice());
                ps.setInt(3, product.getColorId());
                ps.setString(4, product.getRom());
                ps.setString(5, product.getRam());
                ps.setString(6, product.getSizeScreen());
                ps.setString(7, product.getScreenResolution());
                ps.setString(8, product.getFrontCamera());
                ps.setString(9, product.getBackCamera());

                int row = ps.executeUpdate();
                ps.close();
                return row == 1;
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }

        }

        return false;
    }

    @Override
    public boolean edit(Product product) {
        if (product != null) {
            Connection conn = ConnectDB.getInstance();
            String sql = "update SAN_PHAM  set " +
                    "gia_san_pham = ? , " +
                    "bo_nho_rom = ? ," +
                    "ram = ? ," +
                    "kich_thuoc_man_hinh = ? ," +
                    "do_phan_giai_man_hinh = ? ," +
                    "camera_truoc = ? ," +
                    "camera_sau = ? ," +
                    "thoi_gian_tao = ? " +
                    "where id = ?";



            PreparedStatement ps = null;
            try {
                BigDecimal b = new BigDecimal(product.getPrice());
                ps = conn.prepareStatement(sql);
                ps.setBigDecimal(1, b);
                ps.setString(2, product.getRom());
                ps.setString(3, product.getRam());
                ps.setString(4, product.getSizeScreen());
                ps.setString(5, product.getScreenResolution());
                ps.setString(6, product.getFrontCamera());
                ps.setString(7, product.getBackCamera());
                ps.setDate(8, new Date(System.currentTimeMillis()));
                ps.setInt(9, product.getId());
                int row = ps.executeUpdate();
                return row == 1;
            } catch (SQLException e) {
                e.printStackTrace();
                return false;
            }

        }

        return false;
    }

    @Override
    public boolean delete(int id) {
        PreparedStatement ps = null;
        try {
            Connection conn = ConnectDB.getInstance();
            String sql = "deleteProduct_proc ?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();

            String check = "select * from SAN_PHAM where id = ?";
            ps = conn.prepareStatement(check);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            boolean deleted = rs.next();
            rs.close();
            ps.close();
            return !deleted;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

    }

    @Override
    public Product getById(int id) {
        Connection conn = ConnectDB.getInstance();
        String sql = "SELECT SAN_PHAM.*, MAU_SAC.ten_mau_sac, MAU_SAC.ma_mau_sac_hex, DONG_SAN_PHAM.ten_dong_san_pham " +
                "FROM SAN_PHAM join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac " +
                "join DONG_SAN_PHAM on DONG_SAN_PHAM.id = SAN_PHAM.id_dong_san_pham " +
                "where SAN_PHAM.id = " + id;

        try {

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                setValueProduct(product, rs);
                product.setSaleRate(getSaleRate(product.getId()));
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
        String sql = "SELECT SAN_PHAM.*, MAU_SAC.ten_mau_sac, MAU_SAC.ma_mau_sac_hex, DONG_SAN_PHAM.ten_dong_san_pham " +
                "FROM SAN_PHAM join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac " +
                "join DONG_SAN_PHAM on DONG_SAN_PHAM.id = SAN_PHAM.id_dong_san_pham " +
                "order by SAN_PHAM.thoi_gian_tao desc ";


        try {

            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                setValueProduct(product, rs);
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
    public List<Product> getAll(int start, int end) {
        List<Product> products = new ArrayList<Product>();
        Connection conn;
        conn = ConnectDB.getInstance();
        String sql = "getProductLimitAdmin_proc ?, ?";


        try {

            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, start);
            ps.setInt(2, end);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                setValueProduct(product, rs);
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
    public int countProduct() {
        Connection conn = ConnectDB.getInstance();
        int count = 0;
        String sql = "select count(*) from SAN_PHAM";

        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                count = rs.getInt(1);
            }
            rs.close();
            ps.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return  count;
    }


    @Override
    public List<Product> getByName(String productName) {
        List<Product> products = new ArrayList<Product>();
        Connection conn = ConnectDB.getInstance();
        String sql = "SELECT SAN_PHAM.*, MAU_SAC.ten_mau_sac, MAU_SAC.ma_mau_sac_hex, DONG_SAN_PHAM.ten_dong_san_pham " +
                "FROM SAN_PHAM join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac " +
                "join DONG_SAN_PHAM on DONG_SAN_PHAM.id = SAN_PHAM.id_dong_san_pham " +
                "where DONG_SAN_PHAM.ten_dong_san_pham like ? order by thoi_gian_tao desc";


        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            productName = "%" +productName +"%";
            ps.setNString(1, productName);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                setValueProduct(product, rs);
                product.setSaleRate(getSaleRate(product.getId()));
                product.setListPhotoUrl(getLinkPhotoProduct(conn, product.getId()));
                product.setListProductDetail(getLinkDetailProduct(conn, product.getSubCategoryId()));
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
        String sql = "SELECT SAN_PHAM.*, MAU_SAC.ten_mau_sac, MAU_SAC.ma_mau_sac_hex, DONG_SAN_PHAM.ten_dong_san_pham " +
                "FROM SAN_PHAM join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac " +
                "join DONG_SAN_PHAM on SAN_PHAM.id_dong_san_pham = DONG_SAN_PHAM.id join LOAI_SAN_PHAM on LOAI_SAN_PHAM.id = DONG_SAN_PHAM.id_loai_san_pham " +
                "where LOAI_SAN_PHAM.id =" + idCate;


        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                setValueProduct(product, rs);
                product.setSaleRate(getSaleRate(product.getId()));
                product.setListPhotoUrl(getLinkPhotoProduct(conn, product.getId()));
                product.setListProductDetail(getLinkDetailProduct(conn, product.getSubCategoryId()));
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
        String sql = "SELECT  SAN_PHAM.*, MAU_SAC.ten_mau_sac, MAU_SAC.ma_mau_sac_hex, DONG_SAN_PHAM.ten_dong_san_pham " +
                "FROM SAN_PHAM join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac " +
                "join DONG_SAN_PHAM on SAN_PHAM.id_dong_san_pham = DONG_SAN_PHAM.id " +
                "where DONG_SAN_PHAM.id =" + idDongSp;


        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();
                setValueProduct(product, rs);
                product.setSaleRate(getSaleRate(product.getId()));
                product.setListPhotoUrl(getLinkPhotoProduct(conn, product.getId()));
                product.setListProductDetail(getLinkDetailProduct(conn, product.getSubCategoryId()));
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
                product.setSaleRate(getSaleRate(product.getId()));
                product.setListPhotoUrl(getLinkPhotoProduct(conn, product.getId()));
                product.setListProductDetail(getLinkDetailProduct(conn, product.getSubCategoryId()));
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
        String sql = "SELECT top " + numTop + " SAN_PHAM.*,MAU_SAC.ten_mau_sac, MAU_SAC.ma_mau_sac_hex, DONG_SAN_PHAM.ten_dong_san_pham " +
                "FROM SAN_PHAM join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac " +
                "join DONG_SAN_PHAM on SAN_PHAM.id_dong_san_pham = DONG_SAN_PHAM.id " +
                "where DONG_SAN_PHAM.id =" + idDongSp;


        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Product product = new Product();

                setValueProduct(product, rs);
                product.setSaleRate(getSaleRate(product.getId()));
                product.setListPhotoUrl(getLinkPhotoProduct(conn, product.getId()));
                product.setListProductDetail(getLinkDetailProduct(conn, product.getSubCategoryId()));
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
            String sql = "select link_hinh_mo_ta_san_pham from HINH_MOTA_SANPHAM where id_dong_san_pham = " + id;
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


    private double getSaleRate(int productId){
        double result  = 0;
        Connection conn = ConnectDB.getInstance();
        String sql = "select * from GIAM_GIA where id_san_pham = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
               result = Double.parseDouble(rs.getString("phan_tram"));
            }
            ps.close();
            rs.close();
        }catch (SQLException e){

        }
        return result;
    }

    private void setValueProduct(Product product, ResultSet rs) {
        try {
            product.setId(rs.getInt("id"));
            product.setSubCategoryId(rs.getInt("id_dong_san_pham"));
            product.setName(rs.getString("ten_dong_san_pham"));
            product.setPrice(rs.getDouble("gia_san_pham"));

            product.setColorName(rs.getString("ten_mau_sac"));
            product.setColorHex(rs.getString("ma_mau_sac_hex"));
            product.setColorId(rs.getInt("id_mau_sac"));

            product.setRom(rs.getString("bo_nho_rom"));
            product.setRam(rs.getString("ram"));
            product.setSizeScreen(rs.getString("kich_thuoc_man_hinh"));
            product.setScreenResolution(rs.getString("do_phan_giai_man_hinh"));
            product.setFrontCamera(rs.getString("camera_truoc"));
            product.setBackCamera(rs.getString("camera_sau"));
            product.setCreatedAt(rs.getString("thoi_gian_tao"));
//          product.setSaleRate(rs.getDouble("phan_tram"));

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    @Override
    public List<Product> getListProductOrder(int idOrder) {
        List<Product> listProduct = new ArrayList<>();
        try{
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT SAN_PHAM.*,MAU_SAC.ten_mau_sac, MAU_SAC.ma_mau_sac_hex, DONG_SAN_PHAM.ten_dong_san_pham\n" +
                    "FROM CHI_TIET_HOA_DON join SAN_PHAM on SAN_PHAM.id=CHI_TIET_HOA_DON.id_san_pham join MAU_SAC on MAU_SAC.id = SAN_PHAM.id_mau_sac join DONG_SAN_PHAM on SAN_PHAM.id_dong_san_pham = DONG_SAN_PHAM.id\n" +
                    "                where CHI_TIET_HOA_DON.id_hoa_don=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idOrder);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
                Product product = new Product();
                setValueProduct(product, rs);
                listProduct.add(product);
            }

        }catch (SQLException e){
            return null;
        }
        return listProduct;
    }
    @Override
    public Map<Integer, Integer> quantilyProductOrder(int idOrder) {
        Map<Integer, Integer> quantilyProduct = new HashMap<>();
        try{
            Connection conn = ConnectDB.getInstance();
            String sql = "SELECT id_san_pham ,so_luong FROM CHI_TIET_HOA_DON where id_hoa_don=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, idOrder);
            ResultSet rs =ps.executeQuery();
            while (rs.next()){
                quantilyProduct.put(rs.getInt("id_san_pham"),rs.getInt("so_luong"));
            }

        }catch (SQLException e){
            return null;
        }
        return quantilyProduct;
    }

    public static void main(String[] args) {
        ProductDao d = new ProductDao();
        System.out.println(d.getListProductOrder(1));
    }
}
