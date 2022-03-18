package com.astore.controller.client;

import com.astore.model.Product;
import com.astore.services.implement.CategoryServices;
import com.astore.services.implement.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@WebServlet(name = "product", value = "/product")
public class ProductDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String id = request.getParameter("id");
            int numId = Integer.parseInt(id);
            ProductServices p = new ProductServices();
            Product product = p.getById(numId); // lấy thông tin sản phẩm



            if(product == null){
                response.setStatus(404);
                response.sendError(404);
            }else{
                System.out.println(product);
                List<Product> subProduct = p.getProductByIdDongSp(product.getSubCategoryId());

                // lấy ds bộ nhớ thông qua idDongSP
                List<Product> rom = filterByRom(subProduct, product);

                // lấy ds màu sắc thông qua idDongSP
                List<Product> color = filterByColor(subProduct, product);

                // lấy sản phẩm liên quan
                List<Product> productRelative = p.getProductByIdCate(CategoryServices.getInstance().getByProductId(product.getId()).getId(), 4);


                request.setAttribute("product", product);
                request.setAttribute("productRelative", productRelative);
                request.setAttribute("rom", rom);
                request.setAttribute("color", color);
                request.getRequestDispatcher("view/client/product-details/product-details.jsp").forward(request,response);
            }
        }catch (Exception e){
            response.setStatus(404);
            response.sendError(404);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private List<Product> filterByRom(List<Product> list, Product product){
        List<Product> result = new ArrayList<>();
        List<String> ps = new ArrayList<>();
        ps.add(product.getRom());
        result.add(product);

        for (Product p : list) {
            if(!ps.contains(p.getRom())){
                ps.add(p.getRom());
                result.add(p);
            }
        }
        Comparator<Product> cmp = new Comparator<Product>() {
            @Override
            public int compare(Product o1, Product o2) {
                return o1.getRom().compareTo(o2.getRom());
            }
        };
        Collections.sort(result, cmp);
        return result;
    }

    private List<Product> filterByColor(List<Product> list, Product product){
        List<Product> result = new ArrayList<>();
        List<String> ps = new ArrayList<>();
        ps.add(product.getColorHex());
        result.add(product);

        for (Product p : list) {
            if(!ps.contains(p.getColorId()) && p.getRom().equals(product.getRom())){
                ps.add(p.getColorHex());
                result.add(p);
            }
        }
        Comparator<Product> cmp = new Comparator<Product>() {
            @Override
            public int compare(Product o1, Product o2) {
                return o1.getColorHex().compareTo(o2.getColorHex());
            }
        };
        Collections.sort(result, cmp);

        return  result;
    }
}
