package com.astore.controller.client.account_information;

import com.astore.model.Product;
import com.astore.services.implement.ProductServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "InformationOrder", value = "/informationOrder")
public class InformationOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        String idHd = request.getParameter("idHD");
        List<Product> lProOrder = ProductServices.getInstance().getListProductOrder(Integer.valueOf(idHd));
        Map<Integer,Integer> quantilyProduct = ProductServices.getInstance().quantilyProductOrder(Integer.valueOf(idHd));

     String sumOrder = request.getParameter("moneyOrder");
       if (lProOrder.size()==0){
           System.out.println("không có sản phẩm");
           request.getRequestDispatcher("/view/client/information_account/order-details-account.jsp").forward(request,response);
       }else {
           request.setAttribute("listProductOrder", lProOrder);
            request.setAttribute("moneyOrder",sumOrder);
           request.setAttribute("mapQuantilyProduct",quantilyProduct);
           System.out.println(quantilyProduct);
           request.getRequestDispatcher("/view/client/information_account/order-details-account.jsp").forward(request, response);

           System.out.println(lProOrder);
       }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doGet(request,response);
    }
}
