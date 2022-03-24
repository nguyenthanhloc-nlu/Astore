package com.astore.controller.admin.order;

import com.astore.model.Order;
import com.astore.services.implement.InventoryServices;
import com.astore.services.implement.OrderServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateOrderController", value = "/manage/update-order")
public class UpdateOrderController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");
        HttpSession ss = request.getSession();
        ss.setAttribute("id-update-order",id);
        try {
            Order order = OrderServices.getInstance().getById(Integer.parseInt(id));
            request.setAttribute("order", order);
            request.getRequestDispatcher("/view/admin/edit-order.jsp").forward(request,response);
        }catch(NumberFormatException e){
            response.sendError(404);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idHD = request.getParameter("order-id");
        HttpSession ss = request.getSession();
        String id=  ss.getAttribute("id-update-order").toString();
        String idKH = request.getParameter("user-id");
        String priceOrder = request.getParameter("order-price");
        String dateOrder= request.getParameter("order-date");
        Order order = new Order();

        try{order.setId(Integer.parseInt(id));

            order.setIdUser(Integer.valueOf(idKH));
            order.setPriceOrder(Double.valueOf(priceOrder));
            order.setDateAtOrder(dateOrder);
            boolean check = OrderServices.getInstance().update(order);
            System.out.println(check);
            if (check) {
                response.sendRedirect(request.getContextPath()+"/manage/order");
                System.out.println(check);

            } else {
                request.setAttribute("order", order);
                request.setAttribute("error", "Đã có lỗi xảy ra!");
                request.getRequestDispatcher("/view/admin/edit-order.jsp").forward(request, response);
            }
        }catch(NumberFormatException e){
            request.setAttribute("order", order);
            request.setAttribute("error", "Đã có lỗi xảy ra!");
            request.getRequestDispatcher("/view/admin/edit-order.jsp").forward(request, response);
        }

    }
}
